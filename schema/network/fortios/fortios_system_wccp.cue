package ansible

module: fortios_system_wccp: {
	module:            "fortios_system_wccp"
	short_description: "Configure WCCP in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and wccp category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_wccp: {
			description: [
				"Configure WCCP.",
			]
			default: null
			type:    "dict"
			suboptions: {
				assignment_bucket_format: {
					description: [
						"Assignment bucket format for the WCCP cache engine.",
					]
					type: "str"
					choices: [
						"wccp-v2",
						"cisco-implementation",
					]
				}
				assignment_dstaddr_mask: {
					description: [
						"Assignment destination address mask.",
					]
					type: "str"
				}
				assignment_method: {
					description: [
						"Hash key assignment preference.",
					]
					type: "str"
					choices: [
						"HASH",
						"MASK",
						"any",
					]
				}
				assignment_srcaddr_mask: {
					description: [
						"Assignment source address mask.",
					]
					type: "str"
				}
				assignment_weight: {
					description: [
						"Assignment of hash weight/ratio for the WCCP cache engine.",
					]
					type: "int"
				}
				authentication: {
					description: [
						"Enable/disable MD5 authentication.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				cache_engine_method: {
					description: [
						"Method used to forward traffic to the routers or to return to the cache engine.",
					]
					type: "str"
					choices: [
						"GRE",
						"L2",
					]
				}
				cache_id: {
					description: [
						"IP address known to all routers. If the addresses are the same, use the default 0.0.0.0.",
					]
					type: "str"
				}
				forward_method: {
					description: [
						"Method used to forward traffic to the cache servers.",
					]
					type: "str"
					choices: [
						"GRE",
						"L2",
						"any",
					]
				}
				group_address: {
					description: [
						"IP multicast address used by the cache routers. For the FortiGate to ignore multicast WCCP traffic, use the default 0.0.0.0.",
					]
					type: "str"
				}
				password: {
					description: [
						"Password for MD5 authentication.",
					]
					type: "str"
				}
				ports: {
					description: [
						"Service ports.",
					]
					type: "str"
				}
				ports_defined: {
					description: [
						"Match method.",
					]
					type: "str"
					choices: [
						"source",
						"destination",
					]
				}
				primary_hash: {
					description: [
						"Hash method.",
					]
					type: "str"
					choices: [
						"src-ip",
						"dst-ip",
						"src-port",
						"dst-port",
					]
				}
				priority: {
					description: [
						"Service priority.",
					]
					type: "int"
				}
				protocol: {
					description: [
						"Service protocol.",
					]
					type: "int"
				}
				return_method: {
					description: [
						"Method used to decline a redirected packet and return it to the FortiGate.",
					]
					type: "str"
					choices: [
						"GRE",
						"L2",
						"any",
					]
				}
				router_id: {
					description: [
						"IP address known to all cache engines. If all cache engines connect to the same FortiGate interface, use the default 0.0.0.0.",
					]
					type: "str"
				}
				router_list: {
					description: [
						"IP addresses of one or more WCCP routers.",
					]
					type: "str"
				}
				server_list: {
					description: [
						"IP addresses and netmasks for up to four cache servers.",
					]
					type: "str"
				}
				server_type: {
					description: [
						"Cache server type.",
					]
					type: "str"
					choices: [
						"forward",
						"proxy",
					]
				}
				service_id: {
					description: [
						"Service ID.",
					]
					type: "str"
				}
				service_type: {
					description: [
						"WCCP service type used by the cache server for logical interception and redirection of traffic.",
					]
					type: "str"
					choices: [
						"auto",
						"standard",
						"dynamic",
					]
				}
			}
		}
	}
}
