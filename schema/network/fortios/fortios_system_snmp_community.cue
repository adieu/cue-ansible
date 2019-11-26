package ansible

module: fortios_system_snmp_community: {
	module:            "fortios_system_snmp_community"
	short_description: "SNMP community configuration in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system_snmp feature and community category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_snmp_community: {
			description: [
				"SNMP community configuration.",
			]
			default: null
			type:    "dict"
			suboptions: {
				events: {
					description: [
						"SNMP trap events.",
					]
					type: "str"
					choices: [
						"cpu-high",
						"mem-low",
						"log-full",
						"intf-ip",
						"vpn-tun-up",
						"vpn-tun-down",
						"ha-switch",
						"ha-hb-failure",
						"ips-signature",
						"ips-anomaly",
						"av-virus",
						"av-oversize",
						"av-pattern",
						"av-fragmented",
						"fm-if-change",
						"fm-conf-change",
						"bgp-established",
						"bgp-backward-transition",
						"ha-member-up",
						"ha-member-down",
						"ent-conf-change",
						"av-conserve",
						"av-bypass",
						"av-oversize-passed",
						"av-oversize-blocked",
						"ips-pkg-update",
						"ips-fail-open",
						"faz-disconnect",
						"wc-ap-up",
						"wc-ap-down",
						"fswctl-session-up",
						"fswctl-session-down",
						"load-balance-real-server-down",
						"device-new",
						"per-cpu-high",
					]
				}
				hosts: {
					description: [
						"Configure IPv4 SNMP managers (hosts).",
					]
					type: "list"
					suboptions: {
						ha_direct: {
							description: [
								"Enable/disable direct management of HA cluster members.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						host_type: {
							description: [
								"Control whether the SNMP manager sends SNMP queries, receives SNMP traps, or both.",
							]
							type: "str"
							choices: [
								"any",
								"query",
								"trap",
							]
						}
						id: {
							description: [
								"Host entry ID.",
							]
							required: true
							type:     "int"
						}
						ip: {
							description: [
								"IPv4 address of the SNMP manager (host).",
							]
							type: "str"
						}
						source_ip: {
							description: [
								"Source IPv4 address for SNMP traps.",
							]
							type: "str"
						}
					}
				}
				hosts6: {
					description: [
						"Configure IPv6 SNMP managers.",
					]
					type: "list"
					suboptions: {
						ha_direct: {
							description: [
								"Enable/disable direct management of HA cluster members.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						host_type: {
							description: [
								"Control whether the SNMP manager sends SNMP queries, receives SNMP traps, or both.",
							]
							type: "str"
							choices: [
								"any",
								"query",
								"trap",
							]
						}
						id: {
							description: [
								"Host6 entry ID.",
							]
							required: true
							type:     "int"
						}
						ipv6: {
							description: [
								"SNMP manager IPv6 address prefix.",
							]
							type: "str"
						}
						source_ipv6: {
							description: [
								"Source IPv6 address for SNMP traps.",
							]
							type: "str"
						}
					}
				}
				id: {
					description: [
						"Community ID.",
					]
					required: true
					type:     "int"
				}
				name: {
					description: [
						"Community name.",
					]
					type: "str"
				}
				query_v1_port: {
					description: [
						"SNMP v1 query port .",
					]
					type: "int"
				}
				query_v1_status: {
					description: [
						"Enable/disable SNMP v1 queries.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				query_v2c_port: {
					description: [
						"SNMP v2c query port .",
					]
					type: "int"
				}
				query_v2c_status: {
					description: [
						"Enable/disable SNMP v2c queries.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				status: {
					description: [
						"Enable/disable this SNMP community.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				trap_v1_lport: {
					description: [
						"SNMP v1 trap local port .",
					]
					type: "int"
				}
				trap_v1_rport: {
					description: [
						"SNMP v1 trap remote port .",
					]
					type: "int"
				}
				trap_v1_status: {
					description: [
						"Enable/disable SNMP v1 traps.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				trap_v2c_lport: {
					description: [
						"SNMP v2c trap local port .",
					]
					type: "int"
				}
				trap_v2c_rport: {
					description: [
						"SNMP v2c trap remote port .",
					]
					type: "int"
				}
				trap_v2c_status: {
					description: [
						"Enable/disable SNMP v2c traps.",
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
