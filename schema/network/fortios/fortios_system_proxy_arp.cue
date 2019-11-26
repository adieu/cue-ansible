package ansible

module: fortios_system_proxy_arp: {
	module:            "fortios_system_proxy_arp"
	short_description: "Configure proxy-ARP in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and proxy_arp category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
	]

	version_added: "2.9"
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
			type:    "bool"
			default: true
		}
		state: {
			description: [
				"Indicates whether to create or remove the object.",
			]
			type:     "str"
			required: true
			choices: [
				"present",
				"absent",
			]
		}
		system_proxy_arp: {
			description: [
				"Configure proxy-ARP.",
			]
			default: null
			type:    "dict"
			suboptions: {
				end_ip: {
					description: [
						"End IP of IP range to be proxied.",
					]
					type: "str"
				}
				id: {
					description: [
						"Unique integer ID of the entry.",
					]
					required: true
					type:     "int"
				}
				interface: {
					description: [
						"Interface acting proxy-ARP. Source system.interface.name.",
					]
					type: "str"
				}
				ip: {
					description: [
						"IP address or start IP to be proxied.",
					]
					type: "str"
				}
			}
		}
	}
}
