package ansible

module: fortios_router_static: {
	module:            "fortios_router_static"
	short_description: "Configure IPv4 static routing tables in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify router feature and static category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		router_static: {
			description: [
				"Configure IPv4 static routing tables.",
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
				bfd: {
					description: [
						"Enable/disable Bidirectional Forwarding Detection (BFD).",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				blackhole: {
					description: [
						"Enable/disable black hole.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				comment: {
					description: [
						"Optional comments.",
					]
					type: "str"
				}
				device: {
					description: [
						"Gateway out interface or tunnel. Source system.interface.name.",
					]
					type: "str"
				}
				distance: {
					description: [
						"Administrative distance (1 - 255).",
					]
					type: "int"
				}
				dst: {
					description: [
						"Destination IP and mask for this route.",
					]
					type: "str"
				}
				dstaddr: {
					description: [
						"Name of firewall address or address group. Source firewall.address.name firewall.addrgrp.name.",
					]
					type: "str"
				}
				dynamic_gateway: {
					description: [
						"Enable use of dynamic gateway retrieved from a DHCP or PPP server.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				gateway: {
					description: [
						"Gateway IP for this route.",
					]
					type: "str"
				}
				internet_service: {
					description: [
						"Application ID in the Internet service database. Source firewall.internet-service.id.",
					]
					type: "int"
				}
				internet_service_custom: {
					description: [
						"Application name in the Internet service custom database. Source firewall.internet-service-custom.name.",
					]
					type: "str"
				}
				link_monitor_exempt: {
					description: [
						"Enable/disable withdrawing this route when link monitor or health check is down.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				priority: {
					description: [
						"Administrative priority (0 - 4294967295).",
					]
					type: "int"
				}
				seq_num: {
					description: [
						"Sequence number.",
					]
					type: "int"
				}
				src: {
					description: [
						"Source prefix for this route.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable/disable this static route.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				virtual_wan_link: {
					description: [
						"Enable/disable egress through the virtual-wan-link.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				vrf: {
					description: [
						"Virtual Routing Forwarding ID.",
					]
					type: "int"
				}
				weight: {
					description: [
						"Administrative weight (0 - 255).",
					]
					type: "int"
				}
			}
		}
	}
}
