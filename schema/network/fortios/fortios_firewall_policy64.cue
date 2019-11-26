package ansible

module: fortios_firewall_policy64: {
	module:            "fortios_firewall_policy64"
	short_description: "Configure IPv6 to IPv4 policies in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall feature and policy64 category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		firewall_policy64: {
			description: [
				"Configure IPv6 to IPv4 policies.",
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
				action: {
					description: [
						"Policy action.",
					]
					type: "str"
					choices: [
						"accept",
						"deny",
					]
				}
				comments: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				dstaddr: {
					description: [
						"Destination address name.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address.name firewall.addrgrp.name firewall.vip64.name firewall.vipgrp64.name.",
						]
						required: true
						type:     "str"
					}
				}
				dstintf: {
					description: [
						"Destination interface name. Source system.interface.name system.zone.name.",
					]
					type: "str"
				}
				fixedport: {
					description: [
						"Enable/disable policy fixed port.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ippool: {
					description: [
						"Enable/disable policy64 IP pool.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				logtraffic: {
					description: [
						"Enable/disable policy log traffic.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				per_ip_shaper: {
					description: [
						"Per-IP traffic shaper. Source firewall.shaper.per-ip-shaper.name.",
					]
					type: "str"
				}
				permit_any_host: {
					description: [
						"Enable/disable permit any host in.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				policyid: {
					description: [
						"Policy ID.",
					]
					required: true
					type:     "int"
				}
				poolname: {
					description: [
						"Policy IP pool names.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"IP pool name. Source firewall.ippool.name.",
						]
						required: true
						type:     "str"
					}
				}
				schedule: {
					description: [
						"Schedule name. Source firewall.schedule.onetime.name firewall.schedule.recurring.name firewall.schedule.group.name.",
					]
					type: "str"
				}
				service: {
					description: [
						"Service name.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.service.custom.name firewall.service.group.name.",
						]
						required: true
						type:     "str"
					}
				}
				srcaddr: {
					description: [
						"Source address name.",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Address name. Source firewall.address6.name firewall.addrgrp6.name.",
						]
						required: true
						type:     "str"
					}
				}
				srcintf: {
					description: [
						"Source interface name. Source system.zone.name system.interface.name.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable/disable policy status.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				tcp_mss_receiver: {
					description: [
						"TCP MSS value of receiver.",
					]
					type: "int"
				}
				tcp_mss_sender: {
					description: [
						"TCP MSS value of sender.",
					]
					type: "int"
				}
				traffic_shaper: {
					description: [
						"Traffic shaper. Source firewall.shaper.traffic-shaper.name.",
					]
					type: "str"
				}
				traffic_shaper_reverse: {
					description: [
						"Reverse traffic shaper. Source firewall.shaper.traffic-shaper.name.",
					]
					type: "str"
				}
				uuid: {
					description: [
						"Universally Unique Identifier (UUID; automatically assigned but can be manually reset).",
					]
					type: "str"
				}
			}
		}
	}
}
