package ansible

module: cs_securitygroup: {
	module:            "cs_securitygroup"
	short_description: "Manages security groups on Apache CloudStack based clouds."
	description: [
		"Create and remove security groups.",
	]
	version_added: "2.0"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name of the security group."]
			type:     "str"
			required: true
		}
		description: {
			description: ["Description of the security group."]
			type: "str"
		}
		state: {
			description: ["State of the security group."]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
		domain: {
			description: ["Domain the security group is related to."]
			type: "str"
		}
		account: {
			description: ["Account the security group is related to."]
			type: "str"
		}
		project: {
			description: ["Name of the project the security group to be created in."]
			type: "str"
		}
	}
	extends_documentation_fragment: "cloudstack"
}
