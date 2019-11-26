package ansible

module: bigip_dns_zone: {
	module:            "bigip_dns_zone"
	short_description: "Manage DNS zones on BIG-IP"
	description: [
		"Manage DNS zones on BIG-IP. The zones managed here are primarily used for configuring DNS Express on BIG-IP. This module does not configure zones that are found in BIG-IP ZoneRunner.",
	]

	version_added: 2.8
	options: {
		name: {
			description: [
				"Specifies the name of the DNS zone.",
				"The name must begin with a letter and contain only letters, numbers, and the underscore character.",
			]

			type:     "str"
			required: true
		}
		dns_express: {
			description: [
				"DNS express related settings.",
			]
			type: "dict"
			suboptions: {
				server: {
					description: [
						"Specifies the back-end authoritative DNS server from which the BIG-IP system receives AXFR zone transfers for the DNS Express zone.",
					]

					type: "str"
				}
				enabled: {
					description: [
						"Specifies the current status of the DNS Express zone.",
					]
					type: "bool"
				}
				notify_action: {
					description: [
						"Specifies the action the system takes when a NOTIFY message is received for this DNS Express zone.",
						"If a TSIG key is configured for the zone, the signature is only validated for C(consume) and C(repeat) actions.",
						"When C(consume), the NOTIFY message is seen only by DNS Express.",
						"When C(bypass), the NOTIFY message does not go to DNS Express, but instead goes to a back-end DNS server (subject to the value of the Unhandled Query Action configured in the DNS profile applied to the listener that handles the DNS request).",
						"When C(repeat), the NOTIFY message goes to both DNS Express and any back-end DNS server.",
					]

					type: "str"
					choices: [
						"consume",
						"bypass",
						"repeat",
					]
				}
				allow_notify_from: {
					description: [
						"Specifies the IP addresses from which the system accepts NOTIFY messages for this DNS Express zone.",
					]

					type: "list"
				}
				verify_tsig: {
					description: [
						"Specifies whether the system verifies the identity of the authoritative nameserver that sends updated information for this DNS Express zone.",
					]

					type: "bool"
				}
				response_policy: {
					description: [
						"Specifies whether this DNS Express zone is a DNS response policy zone (RPZ).",
					]
					type: "bool"
				}
			}
		}
		nameservers: {
			description: [
				"Specifies the DNS nameservers to which the system sends NOTIFY messages.",
			]
			type: "list"
		}
		tsig_server_key: {
			description: [
				"Specifies the TSIG key the system uses to authenticate the back-end DNS authoritative server that sends AXFR zone transfers to the BIG-IP system.",
			]

			type: "str"
		}
		state: {
			description: [
				"When C(present), ensures that the resource exists.",
				"When C(absent), ensures the resource is removed.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Greg Crosby (@crosbygw)",
	]
}
