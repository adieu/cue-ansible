package ansible

module: win_xml: {
	module:            "win_xml"
	version_added:     "2.7"
	short_description: "Manages XML file content on Windows hosts"
	description: [
		"Manages XML nodes, attributes and text, using xpath to select which xml nodes need to be managed.",
		"XML fragments, formatted as strings, are used to specify the desired state of a part or parts of XML files on remote Windows servers.",
		"For non-Windows targets, use the M(xml) module instead.",
	]
	options: {
		attribute: {
			description: [
				"The attribute name if the type is 'attribute'.",
				"Required if C(type=attribute).",
			]
			type: "str"
		}
		count: {
			description: [
				"When set to C(yes), return the number of nodes matched by I(xpath).",
			]
			type:          "bool"
			default:       false
			version_added: 2.9
		}
		backup: {
			description: [
				"Determine whether a backup should be created.",
				"When set to C(yes), create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.",
			]

			type:    "bool"
			default: false
		}
		fragment: {
			description: [
				"The string representation of the XML fragment expected at xpath.  Since ansible 2.9 not required when I(state=absent), or when I(count=yes).",
			]
			type:     "str"
			required: false
			aliases: ["xmlstring"]
		}
		path: {
			description: [
				"Path to the file to operate on.",
			]
			type:     "path"
			required: true
			aliases: ["dest", "file"]
		}
		state: {
			description: [
				"Set or remove the nodes (or attributes) matched by I(xpath).",
			]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
			version_added: 2.9
		}
		type: {
			description: [
				"The type of XML node you are working with.",
			]
			type:     "str"
			required: true
			default:  "element"
			choices: ["attribute", "element", "text"]
		}
		xpath: {
			description: [
				"Xpath to select the node or nodes to operate on.",
			]
			type:     "str"
			required: true
		}
	}
	author: [
		"Richard Levenberg (@richardcs)",
		"Jon Hawkesworth (@jhawkesworth)",
	]
	notes: [
		"Only supports operating on xml elements, attributes and text.",
		"Namespace, processing-instruction, command and document node types cannot be modified with this module.",
	]
	seealso: [{
		module:      "xml"
		description: "XML manipulation for Posix hosts."
	}, {
		name:        "w3shools XPath tutorial"
		description: "A useful tutorial on XPath"
		link:        "https://www.w3schools.com/xml/xpath_intro.asp"
	}]
}
