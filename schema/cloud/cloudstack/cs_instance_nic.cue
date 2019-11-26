package ansible

module: cs_instance_nic: {
	module:            "cs_instance_nic"
	short_description: "Manages NICs of an instance on Apache CloudStack based clouds."
	description: [
		"Add and remove nic to and from network",
	]
	version_added: "2.4"
	author: [
		"Marc-Aurèle Brothier (@marcaurele)",
		"René Moser (@resmo)",
	], options: {

		vm: {
			description: ["Name of instance."]
			required: true
			type:     "str"
			aliases: ["name"]
		}
		network: {
			description: ["Name of the network."]
			type:     "str"
			required: true
		}
		ip_address: {
			description: ["IP address to be used for the nic."]
			type: "str"
		}
		vpc: {
			description: ["Name of the VPC the I(vm) is related to."]
			type: "str"
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
			description: ["Name of the project the instance is deployed in."]
			type: "str"
		}
		zone: {
			description: [
				"Name of the zone in which the instance is deployed in.",
				"If not set, default zone is used.",
			]
			type: "str"
		}
		state: {
			description: ["State of the nic."]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
		poll_async: {
			description: ["Poll async jobs until job has finished."]
			type:    "bool"
			default: true
		}
	}, extends_documentation_fragment:
		"cloudstack"
}
