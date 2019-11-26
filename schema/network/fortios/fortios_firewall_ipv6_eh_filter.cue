package ansible

module: fortios_firewall_ipv6_eh_filter: {
	module:            "fortios_firewall_ipv6_eh_filter"
	short_description: "Configure IPv6 extension header filter in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall feature and ipv6_eh_filter category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		firewall_ipv6_eh_filter: {
			description: [
				"Configure IPv6 extension header filter.",
			]
			default: null
			type:    "dict"
			suboptions: {
				auth: {
					description: [
						"Enable/disable blocking packets with the Authentication header .",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				dest_opt: {
					description: [
						"Enable/disable blocking packets with Destination Options headers .",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				fragment: {
					description: [
						"Enable/disable blocking packets with the Fragment header .",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				hdopt_type: {
					description: [
						"Block specific Hop-by-Hop and/or Destination Option types (max. 7 types, each between 0 and 255).",
					]
					type: "int"
				}
				hop_opt: {
					description: [
						"Enable/disable blocking packets with the Hop-by-Hop Options header .",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				no_next: {
					description: [
						"Enable/disable blocking packets with the No Next header",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				routing: {
					description: [
						"Enable/disable blocking packets with Routing headers .",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				routing_type: {
					description: [
						"Block specific Routing header types (max. 7 types, each between 0 and 255).",
					]
					type: "int"
				}
			}
		}
	}
}
