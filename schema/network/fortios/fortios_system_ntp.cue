package ansible

module: fortios_system_ntp: {
	module:            "fortios_system_ntp"
	short_description: "Configure system NTP information in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and ntp category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_ntp: {
			description: [
				"Configure system NTP information.",
			]
			default: null
			type:    "dict"
			suboptions: {
				interface: {
					description: [
						"FortiGate interface(s) with NTP server mode enabled. Devices on your network can contact these interfaces for NTP services.",
					]
					type: "list"
					suboptions: interface_name: {
						description: [
							"Interface name. Source system.interface.name.",
						]
						type: "str"
					}
				}
				ntpserver: {
					description: [
						"Configure the FortiGate to connect to any available third-party NTP server.",
					]
					type: "list"
					suboptions: {
						authentication: {
							description: [
								"Enable/disable MD5 authentication.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						id: {
							description: [
								"NTP server ID.",
							]
							required: true
							type:     "int"
						}
						key: {
							description: [
								"Key for MD5 authentication.",
							]
							type: "str"
						}
						key_id: {
							description: [
								"Key ID for authentication.",
							]
							type: "int"
						}
						ntpv3: {
							description: [
								"Enable to use NTPv3 instead of NTPv4.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						server: {
							description: [
								"IP address or hostname of the NTP Server.",
							]
							type: "str"
						}
					}
				}
				ntpsync: {
					description: [
						"Enable/disable setting the FortiGate system time by synchronizing with an NTP Server.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				server_mode: {
					description: [
						"Enable/disable FortiGate NTP Server Mode. Your FortiGate becomes an NTP server for other devices on your network. The FortiGate relays NTP requests to its configured NTP server.",
					]

					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				source_ip: {
					description: [
						"Source IP address for communication to the NTP server.",
					]
					type: "str"
				}
				source_ip6: {
					description: [
						"Source IPv6 address for communication to the NTP server.",
					]
					type: "str"
				}
				syncinterval: {
					description: [
						"NTP synchronization interval (1 - 1440 min).",
					]
					type: "int"
				}
				type: {
					description: [
						"Use the FortiGuard NTP server or any other available NTP Server.",
					]
					type: "str"
					choices: [
						"fortiguard",
						"custom",
					]
				}
			}
		}
	}
}
