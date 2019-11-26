package ansible

module: fortios_firewall_service_custom: {
	module:            "fortios_firewall_service_custom"
	short_description: "Configure custom services in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall_service feature and custom category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		firewall_service_custom: {
			description: [
				"Configure custom services.",
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
				app_category: {
					description: [
						"Application category ID.",
					]
					type: "list"
					suboptions: id: {
						description: [
							"Application category id.",
						]
						required: true
						type:     "int"
					}
				}
				app_service_type: {
					description: [
						"Application service type.",
					]
					type: "str"
					choices: [
						"disable",
						"app-id",
						"app-category",
					]
				}
				application: {
					description: [
						"Application ID.",
					]
					type: "list"
					suboptions: id: {
						description: [
							"Application id.",
						]
						required: true
						type:     "int"
					}
				}
				category: {
					description: [
						"Service category. Source firewall.service.category.name.",
					]
					type: "str"
				}
				check_reset_range: {
					description: [
						"Configure the type of ICMP error message verification.",
					]
					type: "str"
					choices: [
						"disable",
						"strict",
						"default",
					]
				}
				color: {
					description: [
						"Color of icon on the GUI.",
					]
					type: "int"
				}
				comment: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				fqdn: {
					description: [
						"Fully qualified domain name.",
					]
					type: "str"
				}
				helper: {
					description: [
						"Helper name.",
					]
					type: "str"
					choices: [
						"auto",
						"disable",
						"ftp",
						"tftp",
						"ras",
						"h323",
						"tns",
						"mms",
						"sip",
						"pptp",
						"rtsp",
						"dns-udp",
						"dns-tcp",
						"pmap",
						"rsh",
						"dcerpc",
						"mgcp",
						"gtp-c",
						"gtp-u",
						"gtp-b",
					]
				}
				icmpcode: {
					description: [
						"ICMP code.",
					]
					type: "int"
				}
				icmptype: {
					description: [
						"ICMP type.",
					]
					type: "int"
				}
				iprange: {
					description: [
						"Start and end of the IP range associated with service.",
					]
					type: "str"
				}
				name: {
					description: [
						"Custom service name.",
					]
					required: true
					type:     "str"
				}
				protocol: {
					description: [
						"Protocol type based on IANA numbers.",
					]
					type: "str"
					choices: [
						"TCP/UDP/SCTP",
						"ICMP",
						"ICMP6",
						"IP",
						"HTTP",
						"FTP",
						"CONNECT",
						"SOCKS-TCP",
						"SOCKS-UDP",
						"ALL",
					]
				}
				protocol_number: {
					description: [
						"IP protocol number.",
					]
					type: "int"
				}
				proxy: {
					description: [
						"Enable/disable web proxy service.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				sctp_portrange: {
					description: [
						"Multiple SCTP port ranges.",
					]
					type: "str"
				}
				session_ttl: {
					description: [
						"Session TTL (300 - 604800, 0 = default).",
					]
					type: "int"
				}
				tcp_halfclose_timer: {
					description: [
						"Wait time to close a TCP session waiting for an unanswered FIN packet (1 - 86400 sec, 0 = default).",
					]
					type: "int"
				}
				tcp_halfopen_timer: {
					description: [
						"Wait time to close a TCP session waiting for an unanswered open session packet (1 - 86400 sec, 0 = default).",
					]
					type: "int"
				}
				tcp_portrange: {
					description: [
						"Multiple TCP port ranges.",
					]
					type: "str"
				}
				tcp_timewait_timer: {
					description: [
						"Set the length of the TCP TIME-WAIT state in seconds (1 - 300 sec, 0 = default).",
					]
					type: "int"
				}
				udp_idle_timer: {
					description: [
						"UDP half close timeout (0 - 86400 sec, 0 = default).",
					]
					type: "int"
				}
				udp_portrange: {
					description: [
						"Multiple UDP port ranges.",
					]
					type: "str"
				}
				visibility: {
					description: [
						"Enable/disable the visibility of the service on the GUI.",
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
