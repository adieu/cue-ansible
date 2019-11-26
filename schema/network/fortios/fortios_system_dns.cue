package ansible

module: fortios_system_dns: {
	module:            "fortios_system_dns"
	short_description: "Configure DNS in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and dns category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
	]

	version_added: "2.8"
	author: [
		"Miguel Angel Munoz (@mamunozgonzalez)",
		"Nicolas Thomas (@thomnico)",
	]
	notes: [
		"Requires fortiosapi library developed by Fortinet",
		"Run as a local_action in your playbook",
	]
	requirements: [
		"fortiosapi>=0.9.8",
	]
	options: {
		host: {
			description: [
				"FortiOS or FortiGate IP address.",
			]
			type:     "str"
			required: false
		}
		username: {
			description: [
				"FortiOS or FortiGate username.",
			]
			type:     "str"
			required: false
		}
		password: {
			description: [
				"FortiOS or FortiGate password.",
			]
			type:    "str"
			default: ""
		}
		vdom: {
			description: [
				"Virtual domain, among those defined previously. A vdom is a virtual instance of the FortiGate that can be configured and used as a different unit.",
			]

			type:    "str"
			default: "root"
		}
		https: {
			description: [
				"Indicates if the requests towards FortiGate must use HTTPS protocol.",
			]
			type:    "bool"
			default: true
		}
		ssl_verify: {
			description: [
				"Ensures FortiGate certificate must be verified by a proper CA.",
			]
			type:          "bool"
			default:       true
			version_added: 2.9
		}
		system_dns: {
			description: [
				"Configure DNS.",
			]
			default: null
			type:    "dict"
			suboptions: {
				cache_notfound_responses: {
					description: [
						"Enable/disable response from the DNS server when a record is not in cache.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				dns_cache_limit: {
					description: [
						"Maximum number of records in the DNS cache.",
					]
					type: "int"
				}
				dns_cache_ttl: {
					description: [
						"Duration in seconds that the DNS cache retains information.",
					]
					type: "int"
				}
				domain: {
					description: [
						"Search suffix list for hostname lookup.",
					]
					type: "list"
					suboptions: domain: {
						description: [
							"DNS search domain list separated by space (maximum 8 domains)",
						]
						required: true
						type:     "str"
					}
				}
				ip6_primary: {
					description: [
						"Primary DNS server IPv6 address.",
					]
					type: "str"
				}
				ip6_secondary: {
					description: [
						"Secondary DNS server IPv6 address.",
					]
					type: "str"
				}
				primary: {
					description: [
						"Primary DNS server IP address.",
					]
					type: "str"
				}
				retry: {
					description: [
						"Number of times to retry (0 - 5).",
					]
					type: "int"
				}
				secondary: {
					description: [
						"Secondary DNS server IP address.",
					]
					type: "str"
				}
				source_ip: {
					description: [
						"IP address used by the DNS server as its source IP.",
					]
					type: "str"
				}
				timeout: {
					description: [
						"DNS query timeout interval in seconds (1 - 10).",
					]
					type: "int"
				}
			}
		}
	}
}
