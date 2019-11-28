package main

import (
	"flag"
	"fmt"
	"os"
	"path"

	"cuelang.org/go/cue/ast"
	"cuelang.org/go/cue/format"
	"cuelang.org/go/cue/token"
	"gopkg.in/yaml.v2"
)

var typeMap = map[string]string{
	"string":  "string",
	"str":     "string",
	"int":     "int",
	"float":   "float",
	"bool":    "bool",
	"list":    "[..._]",
	"dict":    "{...}",
	"raw":     "_",
	"path":    "string",
	"json":    "string",
	"jsonarg": "string",
}

var baseFields = map[string]string{
	"name":     "string",
	"register": "string",
	"vars":     "{...}",
	"when":     "string",
	"tags":     "[...string]",
	"notify":   "string | [...string]",
}

type Option struct {
	Type        string      `yaml:"type"`
	Required    bool        `yaml:"required"`
	Elements    string      `yaml:"elements"`
	Description interface{} `yaml:"description"`
}

func (o Option) CueType() string {
	t, ok := typeMap[o.Type]
	if !ok {
		panic(fmt.Sprintf("unknown type: %s", o.Type))
	}
	switch {
	case t == "[..._]" && o.Elements != "":
		t = fmt.Sprintf("[...%s]", typeMap[o.Elements])
	}
	return t
}

func (o Option) CueComment() *ast.CommentGroup {
	switch desc := o.Description.(type) {
	case string:
		cm := &ast.CommentGroup{List: []*ast.Comment{
			&ast.Comment{
				Text: "// " + desc,
			},
		}}
		return cm
	case []interface{}:
		if len(desc) > 0 {
			cm := &ast.CommentGroup{}
			for _, d := range desc {
				cm.List = append(cm.List, &ast.Comment{
					Text: "// " + d.(string),
				})
			}
			return cm
		}
		return nil
	default:
		panic(fmt.Sprintf("unsupport Description type: %T", o.Description))
	}
}

func (o Option) CueField(label string) *ast.Field {
	field := &ast.Field{
		Label: ast.NewIdent(label),
		Value: ast.NewIdent(o.CueType()),
	}
	if !o.Required {
		field.Optional = token.NoSpace.Pos()
	}
	return field
}

type Module struct {
	Module  string            `yaml:"module"`
	Options map[string]Option `yaml:"options"`
}

func (m Module) CueField(label string) *ast.Field {
	i := &ast.StructLit{}
	for label, o := range m.Options {
		// Field comment
		c := o.CueComment()
		if c != nil {
			i.Elts = append(i.Elts, c)
		}
		// Field
		f := o.CueField(label)
		i.Elts = append(i.Elts, f)
	}
	field := &ast.Field{
		Label: ast.NewIdent(label),
		Value: i,
	}
	return field
}

func main() {
	pkg := os.Getenv("PACKAGE")
	if pkg != "" {
		pkg = path.Base(pkg)
	}
	file := "-"
	single := false

	flag.StringVar(&pkg, "package", pkg, "ansible package name")
	flag.StringVar(&file, "file", file, "ansible package schema file. use - for stdin")
	flag.BoolVar(&single, "single", single, "input is a single module")

	flag.Parse()

	// Try extract package name from input file path
	if pkg == "" && file != "-" {
		pkg = path.Base(path.Dir(file))
	}

	if pkg == "" {
		fmt.Fprint(os.Stderr, "package config should not be empty\n")
		return
	}
	if file == "" {
		fmt.Fprint(os.Stderr, "input file should not be empty\n")
		return
	}

	var stream *os.File
	var err error

	if file == "-" {
		stream = os.Stdin
	} else {
		stream, err = os.Open(file)
		defer stream.Close()
		if err != nil {
			fmt.Fprintf(os.Stderr, "open input file error: %s\n", err)
			return
		}
	}

	modules := map[string]Module{}
	d := yaml.NewDecoder(stream)
	if single {
		module := Module{}
		err = d.Decode(&module)
		if err == nil {
			modules[module.Module] = module
		}
	} else {
		err = d.Decode(modules)
	}
	if err != nil {
		fmt.Fprintf(os.Stderr, "decode input file error: %s\n", err)
		return
	}

	// Base fields shared by all task
	fields := []ast.Decl{}
	for label, value := range baseFields {
		f := &ast.Field{
			Label:    ast.NewIdent(label),
			Optional: token.NoSpace.Pos(),
			Value:    ast.NewIdent(value),
		}
		fields = append(fields, f)
	}

	// Package name
	fmt.Printf("package %s\n\n", pkg)

	for k, m := range modules {
		i := &ast.StructLit{}
		// Base fields
		i.Elts = append(i.Elts, fields...)
		// Module field
		i.Elts = append(i.Elts, m.CueField(k))

		f := ast.Field{
			Label: ast.NewIdent(k),
			Token: token.ISA,
			Value: i,
		}
		n := &ast.File{Decls: []ast.Decl{&f}}
		b, err := format.Node(n)
		if err != nil {
			fmt.Fprintf(os.Stderr, "err: %s\n", err)
			return
		}
		fmt.Printf("%s\n", b)
	}
}
