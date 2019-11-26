package ansible

module: fortios_system_vdom_property: {
	module:            "fortios_system_vdom_property"
	short_description: "Configure VDOM property in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and vdom_property category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_vdom_property: {
			description: [
				"Configure VDOM property.",
			]
			default: null
			type:    "dict"
			suboptions: {
				custom_service: {
					description: [
						"Maximum guaranteed number of firewall custom services.",
					]
					type: "str"
				}
				description: {
					description: [
						"Description.",
					]
					type: "str"
				}
				dialup_tunnel: {
					description: [
						"Maximum guaranteed number of dial-up tunnels.",
					]
					type: "str"
				}
				firewall_address: {
					description: [
						"Maximum guaranteed number of firewall addresses (IPv4, IPv6, multicast).",
					]
					type: "str"
				}
				firewall_addrgrp: {
					description: [
						"Maximum guaranteed number of firewall address groups (IPv4, IPv6).",
					]
					type: "str"
				}
				firewall_policy: {
					description: [
						"Maximum guaranteed number of firewall policies (IPv4, IPv6, policy46, policy64, DoS-policy4, DoS-policy6, multicast).",
					]
					type: "str"
				}
				ipsec_phase1: {
					description: [
						"Maximum guaranteed number of VPN IPsec phase 1 tunnels.",
					]
					type: "str"
				}
				ipsec_phase1_interface: {
					description: [
						"Maximum guaranteed number of VPN IPsec phase1 interface tunnels.",
					]
					type: "str"
				}
				ipsec_phase2: {
					description: [
						"Maximum guaranteed number of VPN IPsec phase 2 tunnels.",
					]
					type: "str"
				}
				ipsec_phase2_interface: {
					description: [
						"Maximum guaranteed number of VPN IPsec phase2 interface tunnels.",
					]
					type: "str"
				}
				log_disk_quota: {
					description: [
						"Log disk quota in MB (range depends on how much disk space is available).",
					]
					type: "str"
				}
				name: {
					description: [
						"VDOM name. Source system.vdom.name.",
					]
					required: true
					type:     "str"
				}
				onetime_schedule: {
					description: [
						"Maximum guaranteed number of firewall one-time schedules.",
					]
					type: "str"
				}
				proxy: {
					description: [
						"Maximum guaranteed number of concurrent proxy users.",
					]
					type: "str"
				}
				recurring_schedule: {
					description: [
						"Maximum guaranteed number of firewall recurring schedules.",
					]
					type: "str"
				}
				service_group: {
					description: [
						"Maximum guaranteed number of firewall service groups.",
					]
					type: "str"
				}
				session: {
					description: [
						"Maximum guaranteed number of sessions.",
					]
					type: "str"
				}
				snmp_index: {
					description: [
						"Permanent SNMP Index of the virtual domain (0 - 4294967295).",
					]
					type: "int"
				}
				sslvpn: {
					description: [
						"Maximum guaranteed number of SSL-VPNs.",
					]
					type: "str"
				}
				user: {
					description: [
						"Maximum guaranteed number of local users.",
					]
					type: "str"
				}
				user_group: {
					description: [
						"Maximum guaranteed number of user groups.",
					]
					type: "str"
				}
			}
		}
	}
}
