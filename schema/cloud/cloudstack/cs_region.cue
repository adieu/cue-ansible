package ansible

module: cs_region: {
	module:            "cs_region"
	short_description: "Manages regions on Apache CloudStack based clouds."
	description: [
		"Add, update and remove regions.",
	]
	version_added: "2.3"
	author:        "René Moser (@resmo)"
	options: {
		id: {
			description: [
				"ID of the region.",
				"Must be an number (int).",
			]
			type:     "int"
			required: true
		}
		name: {
			description: [
				"Name of the region.",
				"Required if I(state=present)",
			]
			type: "str"
		}
		endpoint: {
			description: [
				"Endpoint URL of the region.",
				"Required if I(state=present)",
			]
			type: "str"
		}
		state: {
			description: ["State of the region."]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "cloudstack"
}
