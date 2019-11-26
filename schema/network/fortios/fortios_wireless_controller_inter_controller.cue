package ansible

module: fortios_wireless_controller_inter_controller: {
	module:            "fortios_wireless_controller_inter_controller"
	short_description: "Configure inter wireless controller operation in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify wireless_controller feature and inter_controller category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		wireless_controller_inter_controller: {
			description: [
				"Configure inter wireless controller operation.",
			]
			default: null
			type:    "dict"
			suboptions: {
				fast_failover_max: {
					description: [
						"Maximum number of retransmissions for fast failover HA messages between peer wireless controllers (3 - 64).",
					]
					type: "int"
				}
				fast_failover_wait: {
					description: [
						"Minimum wait time before an AP transitions from secondary controller to primary controller (10 - 86400 sec).",
					]
					type: "int"
				}
				inter_controller_key: {
					description: [
						"Secret key for inter-controller communications.",
					]
					type: "str"
				}
				inter_controller_mode: {
					description: [
						"Configure inter-controller mode (disable, l2-roaming, 1+1).",
					]
					type: "str"
					choices: [
						"disable",
						"l2-roaming",
						"1+1",
					]
				}
				inter_controller_peer: {
					description: [
						"Fast failover peer wireless controller list.",
					]
					type: "list"
					suboptions: {
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
						peer_ip: {
							description: [
								"Peer wireless controller's IP address.",
							]
							type: "str"
						}
						peer_port: {
							description: [
								"Port used by the wireless controller's for inter-controller communications (1024 - 49150).",
							]
							type: "int"
						}
						peer_priority: {
							description: [
								"Peer wireless controller's priority (primary or secondary).",
							]
							type: "str"
							choices: [
								"primary",
								"secondary",
							]
						}
					}
				}
				inter_controller_pri: {
					description: [
						"Configure inter-controller's priority (primary or secondary).",
					]
					type: "str"
					choices: [
						"primary",
						"secondary",
					]
				}
			}
		}
	}
}
