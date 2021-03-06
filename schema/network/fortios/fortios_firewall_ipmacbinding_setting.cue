package ansible

module: fortios_firewall_ipmacbinding_setting: {
	module:            "fortios_firewall_ipmacbinding_setting"
	short_description: "Configure IP to MAC binding settings in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall_ipmacbinding feature and setting category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		firewall_ipmacbinding_setting: {
			description: [
				"Configure IP to MAC binding settings.",
			]
			default: null
			type:    "dict"
			suboptions: {
				bindthroughfw: {
					description: [
						"Enable/disable use of IP/MAC binding to filter packets that would normally go through the firewall.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				bindtofw: {
					description: [
						"Enable/disable use of IP/MAC binding to filter packets that would normally go to the firewall.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				undefinedhost: {
					description: [
						"Select action to take on packets with IP/MAC addresses not in the binding list .",
					]
					type: "str"
					choices: [
						"allow",
						"block",
					]
				}
			}
		}
	}
}
