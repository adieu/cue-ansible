package ansible

module: fortios_switch_controller_qos_queue_policy: {
	module:            "fortios_switch_controller_qos_queue_policy"
	short_description: "Configure FortiSwitch QoS egress queue policy in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify switch_controller_qos feature and queue_policy category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		switch_controller_qos_queue_policy: {
			description: [
				"Configure FortiSwitch QoS egress queue policy.",
			]
			default: null
			type:    "dict"
			suboptions: {
				cos_queue: {
					description: [
						"COS queue configuration.",
					]
					type: "list"
					suboptions: {
						description: {
							description: [
								"Description of the COS queue.",
							]
							type: "str"
						}
						drop_policy: {
							description: [
								"COS queue drop policy.",
							]
							type: "str"
							choices: [
								"taildrop",
								"weighted-random-early-detection",
							]
						}
						max_rate: {
							description: [
								"Maximum rate (0 - 4294967295 kbps, 0 to disable).",
							]
							type: "int"
						}
						min_rate: {
							description: [
								"Minimum rate (0 - 4294967295 kbps, 0 to disable).",
							]
							type: "int"
						}
						name: {
							description: [
								"Cos queue ID.",
							]
							required: true
							type:     "str"
						}
						weight: {
							description: [
								"Weight of weighted round robin scheduling.",
							]
							type: "int"
						}
					}
				}
				name: {
					description: [
						"QoS policy name",
					]
					required: true
					type:     "str"
				}
				schedule: {
					description: [
						"COS queue scheduling.",
					]
					type: "str"
					choices: [
						"strict",
						"round-robin",
						"weighted",
					]
				}
			}
		}
	}
}
