package ansible

module: bigip_dns_nameserver: {
	module:            "bigip_dns_nameserver"
	short_description: "Manage LTM DNS nameservers on a BIG-IP"
	description: [
		"Manages LTM DNS nameservers on a BIG-IP. These nameservers form part of what is known as DNS Express on a BIG-IP. This module does not configure GTM related functionality, nor does it configure system-level name servers that affect the base system's ability to resolve DNS names.",
	]

	version_added: 2.8
	options: {
		name: {
			description: [
				"Specifies the name of the nameserver.",
			]
			type:     "str"
			required: true
		}
		address: {
			description: [
				"Specifies the IP address on which the DNS nameserver (client) or back-end DNS authoritative server (DNS Express server) listens for DNS messages.",
				"When creating a new nameserver, if this value is not specified, the default is C(127.0.0.1).",
			]

			type: "str"
		}
		service_port: {
			description: [
				"Specifies the service port on which the DNS nameserver (client) or back-end DNS authoritative server (DNS Express server) listens for DNS messages.",
				"When creating a new nameserver, if this value is not specified, the default is C(53).",
			]

			type: "str"
		}
		route_domain: {
			description: [
				"Specifies the local route domain that the DNS nameserver (client) or back-end DNS authoritative server (DNS Express server) uses for outbound traffic.",
				"When creating a new nameserver, if this value is not specified, the default is C(0).",
			]

			type: "str"
		}
		tsig_key: {
			description: [
				"Specifies the TSIG key the system uses to communicate with this DNS nameserver (client) or back-end DNS authoritative server (DNS Express server) for AXFR zone transfers.",
				"If the nameserver is a client, then the system uses this TSIG key to verify the request and sign the response.",
				"If this nameserver is a DNS Express server, then this TSIG key must match the TSIG key for the zone on the back-end DNS authoritative server.",
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
	author: ["Tim Rupp (@caphrim007)"]
}
