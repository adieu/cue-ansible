package ansible

module: fortios_switch_controller_qos_qos_policy: {
	module:            "fortios_switch_controller_qos_qos_policy"
	short_description: "Configure FortiSwitch QoS policy in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify switch_controller_qos feature and qos_policy category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		switch_controller_qos_qos_policy: {
			description: [
				"Configure FortiSwitch QoS policy.",
			]
			default: null
			type:    "dict"
			suboptions: {
				default_cos: {
					description: [
						"Default cos queue for untagged packets.",
					]
					type: "int"
				}
				name: {
					description: [
						"QoS policy name.",
					]
					required: true
					type:     "str"
				}
				queue_policy: {
					description: [
						"QoS egress queue policy. Source switch-controller.qos.queue-policy.name.",
					]
					type: "str"
				}
				trust_dot1p_map: {
					description: [
						"QoS trust 802.1p map. Source switch-controller.qos.dot1p-map.name.",
					]
					type: "str"
				}
				trust_ip_dscp_map: {
					description: [
						"QoS trust ip dscp map. Source switch-controller.qos.ip-dscp-map.name.",
					]
					type: "str"
				}
			}
		}
	}
}
