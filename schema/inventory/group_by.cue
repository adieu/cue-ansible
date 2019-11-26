package ansible

module: group_by: {
	module:            "group_by"
	short_description: "Create Ansible groups based on facts"
	description: [
		"Use facts to create ad-hoc groups that can be used later in a playbook.",
		"This module is also supported for Windows targets.",
	]
	version_added: "0.9"
	options: {
		key: {
			description: [
				"The variables whose values will be used as groups.",
			]
			type:     "str"
			required: true
		}
		parents: {
			description: [
				"The list of the parent groups.",
			]
			type:          "list"
			default:       "all"
			version_added: "2.4"
		}
	}
	notes: [
		"Spaces in group names are converted to dashes '-'.",
		"This module is also supported for Windows targets.",
	]
	seealso: [{
		module: "add_host"
	}]
	author: ["Jeroen Hoekx (@jhoekx)"]
}
