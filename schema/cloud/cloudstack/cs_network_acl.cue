package ansible

module: cs_network_acl: {
	module:            "cs_network_acl"
	short_description: "Manages network access control lists (ACL) on Apache CloudStack based clouds."
	description: [
		"Create and remove network ACLs.",
	]
	version_added: "2.4"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name of the network ACL."]
			type:     "str"
			required: true
		}
		description: {
			description: [
				"Description of the network ACL.",
				"If not set, identical to I(name).",
			]
			type: "str"
		}
		vpc: {
			description: ["VPC the network ACL is related to."]
			type:     "str"
			required: true
		}
		state: {
			description: ["State of the network ACL."]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
		domain: {
			description: ["Domain the network ACL rule is related to."]
			type: "str"
		}
		account: {
			description: ["Account the network ACL rule is related to."]
			type: "str"
		}
		project: {
			description: ["Name of the project the network ACL is related to."]
			type: "str"
		}
		zone: {
			description: [
				"Name of the zone the VPC is related to.",
				"If not set, default zone is used.",
			]
			type: "str"
		}
		poll_async: {
			description: ["Poll async jobs until job has finished."]
			type:    "bool"
			default: true
		}
	}
	extends_documentation_fragment: "cloudstack"
}
