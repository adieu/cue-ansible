package ansible

module: fortios_router_multicast6: {
	module:            "fortios_router_multicast6"
	short_description: "Configure IPv6 multicast in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify router feature and multicast6 category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		router_multicast6: {
			description: [
				"Configure IPv6 multicast.",
			]
			default: null
			type:    "dict"
			suboptions: {
				interface: {
					description: [
						"Protocol Independent Multicast (PIM) interfaces.",
					]
					type: "list"
					suboptions: {
						hello_holdtime: {
							description: [
								"Time before old neighbour information expires (1 - 65535 sec).",
							]
							type: "int"
						}
						hello_interval: {
							description: [
								"Interval between sending PIM hello messages  (1 - 65535 sec)..",
							]
							type: "int"
						}
						name: {
							description: [
								"Interface name. Source system.interface.name.",
							]
							required: true
							type:     "str"
						}
					}
				}
				multicast_pmtu: {
					description: [
						"Enable/disable PMTU for IPv6 multicast.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				multicast_routing: {
					description: [
						"Enable/disable IPv6 multicast routing.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				pim_sm_global: {
					description: [
						"PIM sparse-mode global settings.",
					]
					type: "dict"
					suboptions: {
						register_rate_limit: {
							description: [
								"Limit of packets/sec per source registered through this RP (0 means unlimited).",
							]
							type: "int"
						}
						rp_address: {
							description: [
								"Statically configured RP addresses.",
							]
							type: "list"
							suboptions: {
								id: {
									description: [
										"ID of the entry.",
									]
									required: true
									type:     "int"
								}
								ip6_address: {
									description: [
										"RP router IPv6 address.",
									]
									type: "str"
								}
							}
						}
					}
				}
			}
		}
	}
}
