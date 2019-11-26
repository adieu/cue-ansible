package ansible

module: bigip_dns_cache_resolver: {
	module:            "bigip_dns_cache_resolver"
	short_description: "Manage DNS resolver cache configurations on BIG-IP"
	description: [
		"Manage DNS resolver cache configurations on BIG-IP.",
	]
	version_added: 2.8
	options: {
		name: {
			description: [
				"Specifies the name of the cache.",
			]
			type:     "str"
			required: true
		}
		answer_default_zones: {
			description: [
				"Specifies whether the system answers DNS queries for the default zones localhost, reverse 127.0.0.1 and ::1, and AS112.",
				"When creating a new cache resolver, if this parameter is not specified, the default is C(no).",
			]

			type: "bool"
		}
		forward_zones: {
			description: [
				"Forward zones associated with the cache.",
				"To remove all forward zones, specify a value of C(none).",
			]
			suboptions: {
				name: {
					description: [
						"Specifies a FQDN for the forward zone.",
					]
					type:     "str"
					required: true
				}
				nameservers: {
					description: [
						"Specifies the IP address and service port of a recursive nameserver that answers DNS queries for the zone when the response cannot be found in the DNS cache.",
					]

					suboptions: {
						address: {
							description: [
								"Address of recursive nameserver.",
							]
							type: "str"
						}
						port: {
							description: [
								"Port of recursive nameserver.",
								"When specifying new nameservers, if this value is not provided, the default is C(53).",
							]

							type: "int"
						}
					}
					type: "list"
				}
			}
			type: "raw"
		}
		route_domain: {
			description: [
				"Specifies the route domain the resolver uses for outbound traffic.",
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
