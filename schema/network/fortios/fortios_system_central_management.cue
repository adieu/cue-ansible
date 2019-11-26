package ansible

module: fortios_system_central_management: {
	module:            "fortios_system_central_management"
	short_description: "Configure central management in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and central_management category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_central_management: {
			description: [
				"Configure central management.",
			]
			default: null
			type:    "dict"
			suboptions: {
				allow_monitor: {
					description: [
						"Enable/disable allowing the central management server to remotely monitor this FortiGate",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				allow_push_configuration: {
					description: [
						"Enable/disable allowing the central management server to push configuration changes to this FortiGate.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				allow_push_firmware: {
					description: [
						"Enable/disable allowing the central management server to push firmware updates to this FortiGate.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				allow_remote_firmware_upgrade: {
					description: [
						"Enable/disable remotely upgrading the firmware on this FortiGate from the central management server.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				enc_algorithm: {
					description: [
						"Encryption strength for communications between the FortiGate and central management.",
					]
					type: "str"
					choices: [
						"default",
						"high",
						"low",
					]
				}
				fmg: {
					description: [
						"IP address or FQDN of the FortiManager.",
					]
					type: "str"
				}
				fmg_source_ip: {
					description: [
						"IPv4 source address that this FortiGate uses when communicating with FortiManager.",
					]
					type: "str"
				}
				fmg_source_ip6: {
					description: [
						"IPv6 source address that this FortiGate uses when communicating with FortiManager.",
					]
					type: "str"
				}
				include_default_servers: {
					description: [
						"Enable/disable inclusion of public FortiGuard servers in the override server list.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				mode: {
					description: [
						"Central management mode.",
					]
					type: "str"
					choices: [
						"normal",
						"backup",
					]
				}
				schedule_config_restore: {
					description: [
						"Enable/disable allowing the central management server to restore the configuration of this FortiGate.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				schedule_script_restore: {
					description: [
						"Enable/disable allowing the central management server to restore the scripts stored on this FortiGate.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				serial_number: {
					description: [
						"Serial number.",
					]
					type: "str"
				}
				server_list: {
					description: [
						"Additional servers that the FortiGate can use for updates (for AV, IPS, updates) and ratings (for web filter and antispam ratings) servers.",
					]

					type: "list"
					suboptions: {
						addr_type: {
							description: [
								"Indicate whether the FortiGate communicates with the override server using an IPv4 address, an IPv6 address or a FQDN.",
							]
							type: "str"
							choices: [
								"ipv4",
								"ipv6",
								"fqdn",
							]
						}
						fqdn: {
							description: [
								"FQDN address of override server.",
							]
							type: "str"
						}
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
						server_address: {
							description: [
								"IPv4 address of override server.",
							]
							type: "str"
						}
						server_address6: {
							description: [
								"IPv6 address of override server.",
							]
							type: "str"
						}
						server_type: {
							description: [
								"FortiGuard service type.",
							]
							type: "str"
							choices: [
								"update",
								"rating",
							]
						}
					}
				}
				type: {
					description: [
						"Central management type.",
					]
					type: "str"
					choices: [
						"fortimanager",
						"fortiguard",
						"none",
					]
				}
				vdom: {
					description: [
						"Virtual domain (VDOM) name to use when communicating with FortiManager. Source system.vdom.name.",
					]
					type: "str"
				}
			}
		}
	}
}
