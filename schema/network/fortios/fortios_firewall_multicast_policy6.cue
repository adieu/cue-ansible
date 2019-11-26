package ansible

module: fortios_firewall_multicast_policy6: {
	module:            "fortios_firewall_multicast_policy6"
	short_description: "Configure IPv6 multicast NAT policies in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall feature and multicast_policy6 category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		state: {
			description: [
				"Indicates whether to create or remove the object. This attribute was present already in previous version in a deeper level. It has been moved out to this outer level.",
			]

			type:     "str"
			required: false
			choices: [
				"present",
				"absent",
			]
			version_added: 2.9
		}
		firewall_multicast_policy6: {
			description: [
				"Configure IPv6 multicast NAT policies.",
			]
			default: null
			type:    "dict"
			suboptions: {
				state: {
					description: [
						"B(Deprecated)",
						"Starting with Ansible 2.9 we recommend using the top-level 'state' parameter.",
						"HORIZONTALLINE",
						"Indicates whether to create or remove the object.",
					]
					type:     "str"
					required: false
					choices: [
						"present",
						"absent",
					]
				}
				action: {
					description: [
						"Accept or deny traffic matching the policy.",
					]
					type: "str"
					choices: [
						"accept",
						"deny",
					]
				}
				dstaddr: {
					description: [
						"IPv6 destination address name.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.multicast-address6.name.",
						]
						required: true
						type:     "str"
					}
				}
				dstintf: {
					description: [
						"IPv6 destination interface name. Source system.interface.name system.zone.name.",
					]
					type: "str"
				}
				end_port: {
					description: [
						"Integer value for ending TCP/UDP/SCTP destination port in range (1 - 65535).",
					]
					type: "int"
				}
				id: {
					description: [
						"Policy ID.",
					]
					required: true
					type:     "int"
				}
				logtraffic: {
					description: [
						"Enable/disable logging traffic accepted by this policy.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				protocol: {
					description: [
						"Integer value for the protocol type as defined by IANA (0 - 255).",
					]
					type: "int"
				}
				srcaddr: {
					description: [
						"IPv6 source address name.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address6.name firewall.addrgrp6.name.",
						]
						required: true
						type:     "str"
					}
				}
				srcintf: {
					description: [
						"IPv6 source interface name. Source system.interface.name system.zone.name.",
					]
					type: "str"
				}
				start_port: {
					description: [
						"Integer value for starting TCP/UDP/SCTP destination port in range (1 - 65535).",
					]
					type: "int"
				}
				status: {
					description: [
						"Enable/disable this policy.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
			}
		}
	}
}
