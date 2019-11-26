package ansible

module: cs_project: {
	module:            "cs_project"
	short_description: "Manages projects on Apache CloudStack based clouds."
	description: [
		"Create, update, suspend, activate and remove projects.",
	]
	version_added: "2.0"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name of the project."]
			type:     "str"
			required: true
		}
		display_text: {
			description: [
				"Display text of the project.",
				"If not specified, I(name) will be used as I(display_text).",
			]
			type: "str"
		}
		state: {
			description: ["State of the project."]
			type:    "str"
			default: "present"
			choices: ["present", "absent", "active", "suspended"]
		}
		domain: {
			description: ["Domain the project is related to."]
			type: "str"
		}
		account: {
			description: ["Account the project is related to."]
			type: "str"
		}
		tags: {
			description: [
				"List of tags. Tags are a list of dictionaries having keys I(key) and I(value).",
				"If you want to delete all tags, set a empty list e.g. I(tags: []).",
			]
			type: "list"
			aliases: ["tag"]
			version_added: "2.2"
		}
		poll_async: {
			description: ["Poll async jobs until job has finished."]
			type:    "bool"
			default: true
		}
	}
	extends_documentation_fragment: "cloudstack"
}
