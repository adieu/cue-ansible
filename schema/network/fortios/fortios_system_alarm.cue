package ansible

module: fortios_system_alarm: {
	module:            "fortios_system_alarm"
	short_description: "Configure alarm in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and alarm category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_alarm: {
			description: [
				"Configure alarm.",
			]
			default: null
			type:    "dict"
			suboptions: {
				audible: {
					description: [
						"Enable/disable audible alarm.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				groups: {
					description: [
						"Alarm groups.",
					]
					type: "list"
					suboptions: {
						admin_auth_failure_threshold: {
							description: [
								"Admin authentication failure threshold.",
							]
							type: "int"
						}
						admin_auth_lockout_threshold: {
							description: [
								"Admin authentication lockout threshold.",
							]
							type: "int"
						}
						decryption_failure_threshold: {
							description: [
								"Decryption failure threshold.",
							]
							type: "int"
						}
						encryption_failure_threshold: {
							description: [
								"Encryption failure threshold.",
							]
							type: "int"
						}
						fw_policy_id: {
							description: [
								"Firewall policy ID.",
							]
							type: "int"
						}
						fw_policy_id_threshold: {
							description: [
								"Firewall policy ID threshold.",
							]
							type: "int"
						}
						fw_policy_violations: {
							description: [
								"Firewall policy violations.",
							]
							type: "list"
							suboptions: {
								dst_ip: {
									description: [
										"Destination IP (0=all).",
									]
									type: "str"
								}
								dst_port: {
									description: [
										"Destination port (0=all).",
									]
									type: "int"
								}
								id: {
									description: [
										"Firewall policy violations ID.",
									]
									required: true
									type:     "int"
								}
								src_ip: {
									description: [
										"Source IP (0=all).",
									]
									type: "str"
								}
								src_port: {
									description: [
										"Source port (0=all).",
									]
									type: "int"
								}
								threshold: {
									description: [
										"Firewall policy violation threshold.",
									]
									type: "int"
								}
							}
						}
						id: {
							description: [
								"Group ID.",
							]
							required: true
							type:     "int"
						}
						log_full_warning_threshold: {
							description: [
								"Log full warning threshold.",
							]
							type: "int"
						}
						period: {
							description: [
								"Time period in seconds (0 = from start up).",
							]
							type: "int"
						}
						replay_attempt_threshold: {
							description: [
								"Replay attempt threshold.",
							]
							type: "int"
						}
						self_test_failure_threshold: {
							description: [
								"Self-test failure threshold.",
							]
							type: "int"
						}
						user_auth_failure_threshold: {
							description: [
								"User authentication failure threshold.",
							]
							type: "int"
						}
						user_auth_lockout_threshold: {
							description: [
								"User authentication lockout threshold.",
							]
							type: "int"
						}
					}
				}
				status: {
					description: [
						"Enable/disable alarm.",
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
