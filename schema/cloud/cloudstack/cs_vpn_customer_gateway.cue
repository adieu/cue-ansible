package ansible

module: cs_vpn_customer_gateway: {
	module:            "cs_vpn_customer_gateway"
	short_description: "Manages site-to-site VPN customer gateway configurations on Apache CloudStack based clouds."
	description: [
		"Create, update and remove VPN customer gateways.",
	]
	version_added: "2.5"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name of the gateway."]
			type:     "str"
			required: true
		}
		cidrs: {
			description: [
				"List of guest CIDRs behind the gateway.",
				"Required if I(state=present).",
			]
			type: "list"
			aliases: ["cidr"]
		}
		gateway: {
			description: [
				"Public IP address of the gateway.",
				"Required if I(state=present).",
			]
			type: "str"
		}
		esp_policy: {
			description: [
				"ESP policy in the format e.g. C(aes256-sha1;modp1536).",
				"Required if I(state=present).",
			]
			type: "str"
		}
		ike_policy: {
			description: [
				"IKE policy in the format e.g. C(aes256-sha1;modp1536).",
				"Required if I(state=present).",
			]
			type: "str"
		}
		ipsec_psk: {
			description: [
				"IPsec Preshared-Key.",
				"Cannot contain newline or double quotes.",
				"Required if I(state=present).",
			]
			type: "str"
		}
		ike_lifetime: {
			description: [
				"Lifetime in seconds of phase 1 VPN connection.",
				"Defaulted to 86400 by the API on creation if not set.",
			]
			type: "int"
		}
		esp_lifetime: {
			description: [
				"Lifetime in seconds of phase 2 VPN connection.",
				"Defaulted to 3600 by the API on creation if not set.",
			]
			type: "int"
		}
		dpd: {
			description: [
				"Enable Dead Peer Detection.",
				"Disabled per default by the API on creation if not set.",
			]
			type: "bool"
		}
		force_encap: {
			description: [
				"Force encapsulation for NAT traversal.",
				"Disabled per default by the API on creation if not set.",
			]
			type: "bool"
		}
		state: {
			description: ["State of the VPN customer gateway."]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
		domain: {
			description: ["Domain the VPN customer gateway is related to."]
			type: "str"
		}
		account: {
			description: ["Account the VPN customer gateway is related to."]
			type: "str"
		}
		project: {
			description: ["Name of the project the VPN gateway is related to."]
			type: "str"
		}
		poll_async: {
			description: ["Poll async jobs until job has finished."]
			default: true
			type:    "bool"
		}
	}
	extends_documentation_fragment: "cloudstack"
}
