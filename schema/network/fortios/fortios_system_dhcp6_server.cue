package ansible

module: fortios_system_dhcp6_server: {
	module:            "fortios_system_dhcp6_server"
	short_description: "Configure DHCPv6 servers in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system_dhcp6 feature and server category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_dhcp6_server: {
			description: [
				"Configure DHCPv6 servers.",
			]
			default: null
			type:    "dict"
			suboptions: {
				dns_search_list: {
					description: [
						"DNS search list options.",
					]
					type: "str"
					choices: [
						"delegated",
						"specify",
					]
				}
				dns_server1: {
					description: [
						"DNS server 1.",
					]
					type: "str"
				}
				dns_server2: {
					description: [
						"DNS server 2.",
					]
					type: "str"
				}
				dns_server3: {
					description: [
						"DNS server 3.",
					]
					type: "str"
				}
				dns_service: {
					description: [
						"Options for assigning DNS servers to DHCPv6 clients.",
					]
					type: "str"
					choices: [
						"delegated",
						"default",
						"specify",
					]
				}
				domain: {
					description: [
						"Domain name suffix for the IP addresses that the DHCP server assigns to clients.",
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
				interface: {
					description: [
						"DHCP server can assign IP configurations to clients connected to this interface. Source system.interface.name.",
					]
					type: "str"
				}
				ip_mode: {
					description: [
						"Method used to assign client IP.",
					]
					type: "str"
					choices: [
						"range",
						"delegated",
					]
				}
				ip_range: {
					description: [
						"DHCP IP range configuration.",
					]
					type: "list"
					suboptions: {
						end_ip: {
							description: [
								"End of IP range.",
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
						start_ip: {
							description: [
								"Start of IP range.",
							]
							type: "str"
						}
					}
				}
				lease_time: {
					description: [
						"Lease time in seconds, 0 means unlimited.",
					]
					type: "int"
				}
				option1: {
					description: [
						"Option 1.",
					]
					type: "str"
				}
				option2: {
					description: [
						"Option 2.",
					]
					type: "str"
				}
				option3: {
					description: [
						"Option 3.",
					]
					type: "str"
				}
				prefix_range: {
					description: [
						"DHCP prefix configuration.",
					]
					type: "list"
					suboptions: {
						end_prefix: {
							description: [
								"End of prefix range.",
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
						prefix_length: {
							description: [
								"Prefix length.",
							]
							type: "int"
						}
						start_prefix: {
							description: [
								"Start of prefix range.",
							]
							type: "str"
						}
					}
				}
				rapid_commit: {
					description: [
						"Enable/disable allow/disallow rapid commit.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				status: {
					description: [
						"Enable/disable this DHCPv6 configuration.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				subnet: {
					description: [
						"Subnet or subnet-id if the IP mode is delegated.",
					]
					type: "str"
				}
				upstream_interface: {
					description: [
						"Interface name from where delegated information is provided. Source system.interface.name.",
					]
					type: "str"
				}
			}
		}
	}
}
