package ansible

module: fortios_system_snmp_user: {
	module:            "fortios_system_snmp_user"
	short_description: "SNMP user configuration in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system_snmp feature and user category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_snmp_user: {
			description: [
				"SNMP user configuration.",
			]
			default: null
			type:    "dict"
			suboptions: {
				auth_proto: {
					description: [
						"Authentication protocol.",
					]
					type: "str"
					choices: [
						"md5",
						"sha",
					]
				}
				auth_pwd: {
					description: [
						"Password for authentication protocol.",
					]
					type: "str"
				}
				events: {
					description: [
						"SNMP notifications (traps) to send.",
					]
					type: "list"
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
				name: {
					description: [
						"SNMP user name.",
					]
					required: true
					type:     "str"
				}
				notify_hosts: {
					description: [
						"SNMP managers to send notifications (traps) to.",
					]
					type: "list"
				}
				notify_hosts6: {
					description: [
						"IPv6 SNMP managers to send notifications (traps) to.",
					]
					type: "list"
				}
				priv_proto: {
					description: [
						"Privacy (encryption) protocol.",
					]
					type: "str"
					choices: [
						"aes",
						"des",
						"aes256",
						"aes256cisco",
					]
				}
				priv_pwd: {
					description: [
						"Password for privacy (encryption) protocol.",
					]
					type: "str"
				}
				queries: {
					description: [
						"Enable/disable SNMP queries for this user.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				query_port: {
					description: [
						"SNMPv3 query port .",
					]
					type: "int"
				}
				security_level: {
					description: [
						"Security level for message authentication and encryption.",
					]
					type: "str"
					choices: [
						"no-auth-no-priv",
						"auth-no-priv",
						"auth-priv",
					]
				}
				source_ip: {
					description: [
						"Source IP for SNMP trap.",
					]
					type: "str"
				}
				source_ipv6: {
					description: [
						"Source IPv6 for SNMP trap.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable/disable this SNMP user.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				trap_lport: {
					description: [
						"SNMPv3 local trap port .",
					]
					type: "int"
				}
				trap_rport: {
					description: [
						"SNMPv3 trap remote port .",
					]
					type: "int"
				}
				trap_status: {
					description: [
						"Enable/disable traps for this SNMP user.",
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
