package ansible

module: fortios_system_mobile_tunnel: {
	module:            "fortios_system_mobile_tunnel"
	short_description: "Configure Mobile tunnels, an implementation of Network Mobility (NEMO) extensions for Mobile IPv4 RFC5177 in Fortinet's FortiOS and FortiGate."

	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and mobile_tunnel category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_mobile_tunnel: {
			description: [
				"Configure Mobile tunnels, an implementation of Network Mobility (NEMO) extensions for Mobile IPv4 RFC5177.",
			]
			default: null
			type:    "dict"
			suboptions: {
				hash_algorithm: {
					description: [
						"Hash Algorithm (Keyed MD5).",
					]
					type: "str"
					choices: [
						"hmac-md5",
					]
				}
				home_address: {
					description: [
						"Home IP address (Format: xxx.xxx.xxx.xxx).",
					]
					type: "str"
				}
				home_agent: {
					description: [
						"IPv4 address of the NEMO HA (Format: xxx.xxx.xxx.xxx).",
					]
					type: "str"
				}
				lifetime: {
					description: [
						"NMMO HA registration request lifetime (180 - 65535 sec).",
					]
					type: "int"
				}
				n_mhae_key: {
					description: [
						"NEMO authentication key.",
					]
					type: "str"
				}
				n_mhae_key_type: {
					description: [
						"NEMO authentication key type (ascii or base64).",
					]
					type: "str"
					choices: [
						"ascii",
						"base64",
					]
				}
				n_mhae_spi: {
					description: [
						"NEMO authentication SPI .",
					]
					type: "int"
				}
				name: {
					description: [
						"Tunnel name.",
					]
					required: true
					type:     "str"
				}
				network: {
					description: [
						"NEMO network configuration.",
					]
					type: "list"
					suboptions: {
						id: {
							description: [
								"Network entry ID.",
							]
							required: true
							type:     "int"
						}
						interface: {
							description: [
								"Select the associated interface name from available options. Source system.interface.name.",
							]
							type: "str"
						}
						prefix: {
							description: [
								"Class IP and Netmask with correction (Format:xxx.xxx.xxx.xxx xxx.xxx.xxx.xxx or xxx.xxx.xxx.xxx/x).",
							]
							type: "str"
						}
					}
				}
				reg_interval: {
					description: [
						"NMMO HA registration interval (5 - 300).",
					]
					type: "int"
				}
				reg_retry: {
					description: [
						"Maximum number of NMMO HA registration retries (1 to 30).",
					]
					type: "int"
				}
				renew_interval: {
					description: [
						"Time before lifetime expiration to send NMMO HA re-registration (5 - 60).",
					]
					type: "int"
				}
				roaming_interface: {
					description: [
						"Select the associated interface name from available options. Source system.interface.name.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable/disable this mobile tunnel.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				tunnel_mode: {
					description: [
						"NEMO tunnel mode (GRE tunnel).",
					]
					type: "str"
					choices: ["gre"]
				}
			}
		}
	}
}
