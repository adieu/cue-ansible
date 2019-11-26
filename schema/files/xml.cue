package ansible

module: xml: {
	module:            "xml"
	short_description: "Manage bits and pieces of XML files or strings"
	description: [
		"A CRUD-like interface to managing bits of XML files.",
	]
	version_added: "2.4"
	options: {
		path: {
			description: [
				"Path to the file to operate on.",
				"This file must exist ahead of time.",
				"This parameter is required, unless C(xmlstring) is given.",
			]
			type:     "path"
			required: true
			aliases: ["dest", "file"]
		}
		xmlstring: {
			description: [
				"A string containing XML on which to operate.",
				"This parameter is required, unless C(path) is given.",
			]
			type:     "str"
			required: true
		}
		xpath: {
			description: [
				"A valid XPath expression describing the item(s) you want to manipulate.",
				"Operates on the document root, C(/), by default.",
			]
			type: "str"
		}
		namespaces: {
			description: [
				"The namespace C(prefix:uri) mapping for the XPath expression.",
				"Needs to be a C(dict), not a C(list) of items.",
			]
			type: "dict"
		}
		state: {
			description: [
				"Set or remove an xpath selection (node(s), attribute(s)).",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
			aliases: ["ensure"]
		}
		attribute: {
			description: [
				"The attribute to select when using parameter C(value).",
				"This is a string, not prepended with C(@).",
			]
			type: "raw"
		}
		value: {
			description: [
				"Desired state of the selected attribute.",
				"Either a string, or to unset a value, the Python C(None) keyword (YAML Equivalent, C(null)).",
				"Elements default to no value (but present).",
				"Attributes default to an empty string.",
			]
			type: "raw"
		}
		add_children: {
			description: [
				"Add additional child-element(s) to a selected element for a given C(xpath).",
				"Child elements must be given in a list and each item may be either a string (eg. C(children=ansible) to add an empty C(<ansible/>) child element), or a hash where the key is an element name and the value is the element value.",
				"This parameter requires C(xpath) to be set.",
			]
			type: "list"
		}
		set_children: {
			description: [
				"Set the child-element(s) of a selected element for a given C(xpath).",
				"Removes any existing children.",
				"Child elements must be specified as in C(add_children).",
				"This parameter requires C(xpath) to be set.",
			]
			type: "list"
		}
		count: {
			description: [
				"Search for a given C(xpath) and provide the count of any matches.",
				"This parameter requires C(xpath) to be set.",
			]
			type:    "bool"
			default: false
		}
		print_match: {
			description: [
				"Search for a given C(xpath) and print out any matches.",
				"This parameter requires C(xpath) to be set.",
			]
			type:    "bool"
			default: false
		}
		pretty_print: {
			description: [
				"Pretty print XML output.",
			]
			type:    "bool"
			default: false
		}
		content: {
			description: [
				"Search for a given C(xpath) and get content.",
				"This parameter requires C(xpath) to be set.",
			]
			type: "str"
			choices: ["attribute", "text"]
		}
		input_type: {
			description: [
				"Type of input for C(add_children) and C(set_children).",
			]
			type: "str"
			choices: ["xml", "yaml"]
			default: "yaml"
		}
		backup: {
			description: [
				"Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.",
			]

			type:    "bool"
			default: false
		}
		strip_cdata_tags: {
			description: [
				"Remove CDATA tags surrounding text values.",
				"Note that this might break your XML file if text values contain characters that could be interpreted as XML.",
			]
			type:          "bool"
			default:       false
			version_added: "2.7"
		}
		insertbefore: {
			description: [
				"Add additional child-element(s) before the first selected element for a given C(xpath).",
				"Child elements must be given in a list and each item may be either a string (eg. C(children=ansible) to add an empty C(<ansible/>) child element), or a hash where the key is an element name and the value is the element value.",
				"This parameter requires C(xpath) to be set.",
			]
			type:          "bool"
			default:       false
			version_added: "2.8"
		}
		insertafter: {
			description: [
				"Add additional child-element(s) after the last selected element for a given C(xpath).",
				"Child elements must be given in a list and each item may be either a string (eg. C(children=ansible) to add an empty C(<ansible/>) child element), or a hash where the key is an element name and the value is the element value.",
				"This parameter requires C(xpath) to be set.",
			]
			type:          "bool"
			default:       false
			version_added: "2.8"
		}
	}
	requirements: [
		"lxml >= 2.3.0",
	]
	notes: [
		"Use the C(--check) and C(--diff) options when testing your expressions.",
		"The diff output is automatically pretty-printed, so may not reflect the actual file content, only the file structure.",
		"This module does not handle complicated xpath expressions, so limit xpath selectors to simple expressions.",
		"Beware that in case your XML elements are namespaced, you need to use the C(namespaces) parameter, see the examples.",
		"Namespaces prefix should be used for all children of an element where namespace is defined, unless another namespace is defined for them.",
	]
	seealso: [{
		name:        "Xml module development community wiki"
		description: "More information related to the development of this xml module."
		link:        "https://github.com/ansible/community/wiki/Module:-xml"
	}, {
		name:        "Introduction to XPath"
		description: "A brief tutorial on XPath (w3schools.com)."
		link:        "https://www.w3schools.com/xml/xpath_intro.asp"
	}, {
		name:        "XPath Reference document"
		description: "The reference documentation on XSLT/XPath (developer.mozilla.org)."
		link:        "https://developer.mozilla.org/en-US/docs/Web/XPath"
	}]
	author: [
		"Tim Bielawa (@tbielawa)",
		"Magnus Hedemark (@magnus919)",
		"Dag Wieers (@dagwieers)",
	]
}
