package ansible

module: fortios_system_tos_based_priority: {
	module:            "fortios_system_tos_based_priority"
	short_description: "Configure Type of Service (ToS) based priority table to set network traffic priorities in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and tos_based_priority category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_tos_based_priority: {
			description: [
				"Configure Type of Service (ToS) based priority table to set network traffic priorities.",
			]
			default: null
			type:    "dict"
			suboptions: {
				id: {
					description: [
						"Item ID.",
					]
					required: true
					type:     "int"
				}
				priority: {
					description: [
						"ToS based priority level to low, medium or high (these priorities match firewall traffic shaping priorities) .",
					]
					type: "str"
					choices: [
						"low",
						"medium",
						"high",
					]
				}
				tos: {
					description: [
						"Value of the ToS byte in the IP datagram header (0-15, 8: minimize delay, 4: maximize throughput, 2: maximize reliability, 1: minimize monetary cost, and 0: ).",
					]

					type: "int"
				}
			}
		}
	}
}
