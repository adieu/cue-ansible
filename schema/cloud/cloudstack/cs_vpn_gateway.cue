package ansible

module: cs_vpn_gateway: {
	module:            "cs_vpn_gateway"
	short_description: "Manages site-to-site VPN gateways on Apache CloudStack based clouds."
	description: [
		"Creates and removes VPN site-to-site gateways.",
	]
	version_added: "2.4"
	author:        "René Moser (@resmo)"
	options: {
		vpc: {
			description: ["Name of the VPC."]
			type:     "str"
			required: true
		}
		state: {
			description: ["State of the VPN gateway."]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
		domain: {
			description: ["Domain the VPN gateway is related to."]
			type: "str"
		}
		account: {
			description: ["Account the VPN gateway is related to."]
			type: "str"
		}
		project: {
			description: ["Name of the project the VPN gateway is related to."]
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
