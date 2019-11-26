package ansible

module: fortios_system_csf: {
	module:            "fortios_system_csf"
	short_description: "Add this FortiGate to a Security Fabric or set up a new Security Fabric on this FortiGate in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and csf category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_csf: {
			description: [
				"Add this FortiGate to a Security Fabric or set up a new Security Fabric on this FortiGate.",
			]
			default: null
			type:    "dict"
			suboptions: {
				configuration_sync: {
					description: [
						"Configuration sync mode.",
					]
					type: "str"
					choices: [
						"default",
						"local",
					]
				}
				fabric_device: {
					description: [
						"Fabric device configuration.",
					]
					type: "list"
					suboptions: {
						device_ip: {
							description: [
								"Device IP.",
							]
							type: "str"
						}
						device_type: {
							description: [
								"Device type.",
							]
							type: "str"
							choices: [
								"fortimail",
							]
						}
						login: {
							description: [
								"Device login name.",
							]
							type: "str"
						}
						name: {
							description: [
								"Device name.",
							]
							required: true
							type:     "str"
						}
						password: {
							description: [
								"Device login password.",
							]
							type: "str"
						}
					}
				}
				fixed_key: {
					description: [
						"Auto-generated fixed key used when this device is the root. (Will automatically be generated if not set.)",
					]
					type: "str"
				}
				group_name: {
					description: [
						"Security Fabric group name. All FortiGates in a Security Fabric must have the same group name.",
					]
					type: "str"
				}
				group_password: {
					description: [
						"Security Fabric group password. All FortiGates in a Security Fabric must have the same group password.",
					]
					type: "str"
				}
				management_ip: {
					description: [
						"Management IP address of this FortiGate. Used to log into this FortiGate from another FortiGate in the Security Fabric.",
					]
					type: "str"
				}
				management_port: {
					description: [
						"Overriding port for management connection (Overrides admin port).",
					]
					type: "int"
				}
				status: {
					description: [
						"Enable/disable Security Fabric.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				trusted_list: {
					description: [
						"Pre-authorized and blocked security fabric nodes.",
					]
					type: "list"
					suboptions: {
						action: {
							description: [
								"Security fabric authorization action.",
							]
							type: "str"
							choices: [
								"accept",
								"deny",
							]
						}
						downstream_authorization: {
							description: [
								"Trust authorizations by this node's administrator.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						ha_members: {
							description: [
								"HA members.",
							]
							type: "str"
						}
						serial: {
							description: [
								"Serial.",
							]
							required: true
							type:     "str"
						}
					}
				}
				upstream_ip: {
					description: [
						"IP address of the FortiGate upstream from this FortiGate in the Security Fabric.",
					]
					type: "str"
				}
				upstream_port: {
					description: [
						"The port number to use to communicate with the FortiGate upstream from this FortiGate in the Security Fabric .",
					]
					type: "int"
				}
			}
		}
	}
}
