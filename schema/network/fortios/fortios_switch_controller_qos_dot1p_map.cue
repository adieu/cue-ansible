package ansible

module: fortios_switch_controller_qos_dot1p_map: {
	module:            "fortios_switch_controller_qos_dot1p_map"
	short_description: "Configure FortiSwitch QoS 802.1p in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify switch_controller_qos feature and dot1p_map category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		switch_controller_qos_dot1p_map: {
			description: [
				"Configure FortiSwitch QoS 802.1p.",
			]
			default: null
			type:    "dict"
			suboptions: {
				description: {
					description: [
						"Description of the 802.1p name.",
					]
					type: "str"
				}
				name: {
					description: [
						"Dot1p map name.",
					]
					required: true
					type:     "str"
				}
				priority_0: {
					description: [
						"COS queue mapped to dot1p priority number.",
					]
					type: "str"
					choices: [
						"queue-0",
						"queue-1",
						"queue-2",
						"queue-3",
						"queue-4",
						"queue-5",
						"queue-6",
						"queue-7",
					]
				}
				priority_1: {
					description: [
						"COS queue mapped to dot1p priority number.",
					]
					type: "str"
					choices: [
						"queue-0",
						"queue-1",
						"queue-2",
						"queue-3",
						"queue-4",
						"queue-5",
						"queue-6",
						"queue-7",
					]
				}
				priority_2: {
					description: [
						"COS queue mapped to dot1p priority number.",
					]
					type: "str"
					choices: [
						"queue-0",
						"queue-1",
						"queue-2",
						"queue-3",
						"queue-4",
						"queue-5",
						"queue-6",
						"queue-7",
					]
				}
				priority_3: {
					description: [
						"COS queue mapped to dot1p priority number.",
					]
					type: "str"
					choices: [
						"queue-0",
						"queue-1",
						"queue-2",
						"queue-3",
						"queue-4",
						"queue-5",
						"queue-6",
						"queue-7",
					]
				}
				priority_4: {
					description: [
						"COS queue mapped to dot1p priority number.",
					]
					type: "str"
					choices: [
						"queue-0",
						"queue-1",
						"queue-2",
						"queue-3",
						"queue-4",
						"queue-5",
						"queue-6",
						"queue-7",
					]
				}
				priority_5: {
					description: [
						"COS queue mapped to dot1p priority number.",
					]
					type: "str"
					choices: [
						"queue-0",
						"queue-1",
						"queue-2",
						"queue-3",
						"queue-4",
						"queue-5",
						"queue-6",
						"queue-7",
					]
				}
				priority_6: {
					description: [
						"COS queue mapped to dot1p priority number.",
					]
					type: "str"
					choices: [
						"queue-0",
						"queue-1",
						"queue-2",
						"queue-3",
						"queue-4",
						"queue-5",
						"queue-6",
						"queue-7",
					]
				}
				priority_7: {
					description: [
						"COS queue mapped to dot1p priority number.",
					]
					type: "str"
					choices: [
						"queue-0",
						"queue-1",
						"queue-2",
						"queue-3",
						"queue-4",
						"queue-5",
						"queue-6",
						"queue-7",
					]
				}
			}
		}
	}
}
