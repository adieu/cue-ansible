package ansible

module: fortios_ssh_filter_profile: {
	module:            "fortios_ssh_filter_profile"
	short_description: "SSH filter profile in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify ssh_filter feature and profile category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		ssh_filter_profile: {
			description: [
				"SSH filter profile.",
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
				block: {
					description: [
						"SSH blocking options.",
					]
					type: "str"
					choices: [
						"x11",
						"shell",
						"exec",
						"port-forward",
						"tun-forward",
						"sftp",
						"unknown",
					]
				}
				default_command_log: {
					description: [
						"Enable/disable logging unmatched shell commands.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				log: {
					description: [
						"SSH logging options.",
					]
					type: "str"
					choices: [
						"x11",
						"shell",
						"exec",
						"port-forward",
						"tun-forward",
						"sftp",
						"unknown",
					]
				}
				name: {
					description: [
						"SSH filter profile name.",
					]
					required: true
					type:     "str"
				}
				shell_commands: {
					description: [
						"SSH command filter.",
					]
					type: "list"
					suboptions: {
						action: {
							description: [
								"Action to take for URL filter matches.",
							]
							type: "str"
							choices: [
								"block",
								"allow",
							]
						}
						alert: {
							description: [
								"Enable/disable alert.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						id: {
							description: [
								"Id.",
							]
							required: true
							type:     "int"
						}
						log: {
							description: [
								"Enable/disable logging.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						pattern: {
							description: [
								"SSH shell command pattern.",
							]
							type: "str"
						}
						severity: {
							description: [
								"Log severity.",
							]
							type: "str"
							choices: [
								"low",
								"medium",
								"high",
								"critical",
							]
						}
						type: {
							description: [
								"Matching type.",
							]
							type: "str"
							choices: [
								"simple",
								"regex",
							]
						}
					}
				}
			}
		}
	}
}
