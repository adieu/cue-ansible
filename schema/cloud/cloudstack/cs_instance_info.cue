package ansible

module: cs_instance_info: {
	module:            "cs_instance_info"
	short_description: "Gathering information from the API of instances from Apache CloudStack based clouds."
	description: [
		"Gathering information from the API of an instance.",
	]
	version_added: "2.9"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: [
				"Name or display name of the instance.",
				"If not specified, all instances are returned",
			]
			type:     "str"
			required: false
		}
		domain: {
			description: ["Domain the instance is related to."]
			type: "str"
		}
		account: {
			description: ["Account the instance is related to."]
			type: "str"
		}
		project: {
			description: ["Project the instance is related to."]
			type: "str"
		}
	}
	extends_documentation_fragment: "cloudstack"
}
