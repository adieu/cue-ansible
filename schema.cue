package ansible

Option:: {
	description: *[] | string | [...string]
	type: *"string" | "str" | "int" | "float" | "bool" | "list" | "dict" | "raw" | "path" | "json" | "jsonarg"
	required: *false | bool
	default?: string | bool | int | float | [..._] | {...} | null
	aliases?: [...string]
	version_added?: float | string
	choices?: [..._]
	elements?: "string" | "str" | "path" | "raw" | "dict"
	suboptions?: null | {
		[string]: Option
	}
}

Module:: {
	module: string
	short_description: *"" | string
	extends_documentation_fragment?: [...string] | string
	requirements?: [...string]
	description: *[] | string | [string, ...string]
	notes?: null | [...string]
	seealso?: [..._]
	deprecated?: _
	todo?: _
	version_added: float | string
	options: {
		[string]: Option
	}
	author: string | [string, ...string]
}

module: [string]: Module
module: [ID=_]: {
	module: ID
}
