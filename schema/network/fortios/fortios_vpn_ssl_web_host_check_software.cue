package ansible

module: fortios_vpn_ssl_web_host_check_software: {
	module:            "fortios_vpn_ssl_web_host_check_software"
	short_description: "SSL-VPN host check software in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify vpn_ssl_web feature and host_check_software category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		vpn_ssl_web_host_check_software: {
			description: [
				"SSL-VPN host check software.",
			]
			default: null
			type:    "dict"
			suboptions: {
				check_item_list: {
					description: [
						"Check item list.",
					]
					type: "list"
					suboptions: {
						action: {
							description: [
								"Action.",
							]
							type: "str"
							choices: [
								"require",
								"deny",
							]
						}
						id: {
							description: [
								"ID (0 - 4294967295).",
							]
							required: true
							type:     "int"
						}
						md5s: {
							description: [
								"MD5 checksum.",
							]
							type: "list"
							suboptions: id: {
								description: [
									"Hex string of MD5 checksum.",
								]
								required: true
								type:     "str"
							}
						}
						target: {
							description: [
								"Target.",
							]
							type: "str"
						}
						type: {
							description: [
								"Type.",
							]
							type: "str"
							choices: [
								"file",
								"registry",
								"process",
							]
						}
						version: {
							description: [
								"Version.",
							]
							type: "str"
						}
					}
				}
				guid: {
					description: [
						"Globally unique ID.",
					]
					type: "str"
				}
				name: {
					description: [
						"Name.",
					]
					required: true
					type:     "str"
				}
				os_type: {
					description: [
						"OS type.",
					]
					type: "str"
					choices: [
						"windows",
						"macos",
					]
				}
				type: {
					description: [
						"Type.",
					]
					type: "str"
					choices: [
						"av",
						"fw",
					]
				}
				version: {
					description: [
						"Version.",
					]
					type: "str"
				}
			}
		}
	}
}
