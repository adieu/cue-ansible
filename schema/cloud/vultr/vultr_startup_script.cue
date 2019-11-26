package ansible

module: vultr_startup_script: {
	module:            "vultr_startup_script"
	short_description: "Manages startup scripts on Vultr."
	description: [
		"Create, update and remove startup scripts.",
	]
	version_added: "2.5"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["The script name."]
			required: true
			type:     "str"
		}
		script_type: {
			description: ["The script type, can not be changed once created."]
			default: "boot"
			choices: ["boot", "pxe"]
			aliases: ["type"]
			type: "str"
		}
		script: {
			description: [
				"The script source code.",
				"Required if I(state=present).",
			]
			type: "str"
		}
		state: {
			description: ["State of the script."]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
	}
	extends_documentation_fragment: "vultr"
}
