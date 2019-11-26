package ansible

module: cs_staticnat: {
	module:            "cs_staticnat"
	short_description: "Manages static NATs on Apache CloudStack based clouds."
	description: [
		"Create, update and remove static NATs.",
	]
	version_added: "2.0"
	author:        "René Moser (@resmo)"
	options: {
		ip_address: {
			description: ["Public IP address the static NAT is assigned to."]
			type:     "str"
			required: true
		}
		vm: {
			description: [
				"Name of virtual machine which we make the static NAT for.",
				"Required if I(state=present).",
			]
			type: "str"
		}
		vm_guest_ip: {
			description: ["VM guest NIC secondary IP address for the static NAT."]
			type: "str"
		}
		network: {
			description: ["Network the IP address is related to."]
			type:          "str"
			version_added: "2.2"
		}
		vpc: {
			description: ["VPC the network related to."]
			type:          "str"
			version_added: "2.3"
		}
		state: {
			description: ["State of the static NAT."]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
		domain: {
			description: ["Domain the static NAT is related to."]
			type: "str"
		}
		account: {
			description: ["Account the static NAT is related to."]
			type: "str"
		}
		project: {
			description: ["Name of the project the static NAT is related to."]
			type: "str"
		}
		zone: {
			description: [
				"Name of the zone in which the virtual machine is in.",
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
