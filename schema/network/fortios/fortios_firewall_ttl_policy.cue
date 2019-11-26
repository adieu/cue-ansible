package ansible

module: fortios_firewall_ttl_policy: {
	module:            "fortios_firewall_ttl_policy"
	short_description: "Configure TTL policies in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall feature and ttl_policy category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		firewall_ttl_policy: {
			description: [
				"Configure TTL policies.",
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
						"Action to be performed on traffic matching this policy .",
					]
					type: "str"
					choices: [
						"accept",
						"deny",
					]
				}
				id: {
					description: [
						"ID.",
					]
					required: true
					type:     "int"
				}
				schedule: {
					description: [
						"Schedule object from available options. Source firewall.schedule.onetime.name firewall.schedule.recurring.name firewall.schedule.group .name.",
					]

					type: "str"
				}
				service: {
					description: [
						"Service object(s) from available options. Separate multiple names with a space.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Service name. Source firewall.service.custom.name firewall.service.group.name.",
						]
						required: true
						type:     "str"
					}
				}
				srcaddr: {
					description: [
						"Source address object(s) from available options. Separate multiple names with a space.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address.name firewall.addrgrp.name.",
						]
						required: true
						type:     "str"
					}
				}
				srcintf: {
					description: [
						"Source interface name from available interfaces. Source system.zone.name system.interface.name.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable/disable this TTL policy.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ttl: {
					description: [
						"Value/range to match against the packet's Time to Live value (format: ttl[ - ttl_high], 1 - 255).",
					]
					type: "str"
				}
			}
		}
	}
}
