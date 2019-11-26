package ansible

module: fortios_log_memory_filter: {
	module:            "fortios_log_memory_filter"
	short_description: "Filters for memory buffer in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify log_memory feature and filter category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		log_memory_filter: {
			description: [
				"Filters for memory buffer.",
			]
			default: null
			type:    "dict"
			suboptions: {
				admin: {
					description: [
						"Enable/disable admin login/logout logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				anomaly: {
					description: [
						"Enable/disable anomaly logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				auth: {
					description: [
						"Enable/disable firewall authentication logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				cpu_memory_usage: {
					description: [
						"Enable/disable CPU & memory usage logging every 5 minutes.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				dhcp: {
					description: [
						"Enable/disable DHCP service messages logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				dns: {
					description: [
						"Enable/disable detailed DNS event logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				event: {
					description: [
						"Enable/disable event logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				filter: {
					description: [
						"Memory log filter.",
					]
					type: "str"
				}
				filter_type: {
					description: [
						"Include/exclude logs that match the filter.",
					]
					type: "str"
					choices: [
						"include",
						"exclude",
					]
				}
				forward_traffic: {
					description: [
						"Enable/disable forward traffic logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gtp: {
					description: [
						"Enable/disable GTP messages logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ha: {
					description: [
						"Enable/disable HA logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ipsec: {
					description: [
						"Enable/disable IPsec negotiation messages logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ldb_monitor: {
					description: [
						"Enable/disable VIP real server health monitoring logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				local_traffic: {
					description: [
						"Enable/disable local in or out traffic logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				multicast_traffic: {
					description: [
						"Enable/disable multicast traffic logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				netscan_discovery: {
					description: [
						"Enable/disable netscan discovery event logging.",
					]
					type: "str"
				}
				netscan_vulnerability: {
					description: [
						"Enable/disable netscan vulnerability event logging.",
					]
					type: "str"
				}
				pattern: {
					description: [
						"Enable/disable pattern update logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ppp: {
					description: [
						"Enable/disable L2TP/PPTP/PPPoE logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				radius: {
					description: [
						"Enable/disable RADIUS messages logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				severity: {
					description: [
						"Log every message above and including this severity level.",
					]
					type: "str"
					choices: [
						"emergency",
						"alert",
						"critical",
						"error",
						"warning",
						"notification",
						"information",
						"debug",
					]
				}
				sniffer_traffic: {
					description: [
						"Enable/disable sniffer traffic logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ssh: {
					description: [
						"Enable/disable SSH logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				sslvpn_log_adm: {
					description: [
						"Enable/disable SSL administrator login logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				sslvpn_log_auth: {
					description: [
						"Enable/disable SSL user authentication logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				sslvpn_log_session: {
					description: [
						"Enable/disable SSL session logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				system: {
					description: [
						"Enable/disable system activity logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				vip_ssl: {
					description: [
						"Enable/disable VIP SSL logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				voip: {
					description: [
						"Enable/disable VoIP logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				wan_opt: {
					description: [
						"Enable/disable WAN optimization event logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				wireless_activity: {
					description: [
						"Enable/disable wireless activity event logging.",
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
