package ansible

module: cs_instance_facts: {
	module:            "cs_instance_facts"
	short_description: "Gathering facts from the API of instances from Apache CloudStack based clouds."
	description: [
		"Gathering facts from the API of an instance.",
	]
	deprecated: {
		removed_in:  "2.13"
		why:         "Transformed into an info module."
		alternative: "Use M(cs_instance_info) instead."
	}
	version_added: "2.1"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name or display name of the instance."]
			type:     "str"
			required: true
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
