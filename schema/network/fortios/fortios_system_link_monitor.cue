package ansible

module: fortios_system_link_monitor: {
	module:            "fortios_system_link_monitor"
	short_description: "Configure Link Health Monitor in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and link_monitor category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		system_link_monitor: {
			description: [
				"Configure Link Health Monitor.",
			]
			default: null
			type:    "dict"
			suboptions: {
				addr_mode: {
					description: [
						"Address mode (IPv4 or IPv6).",
					]
					type: "str"
					choices: [
						"ipv4",
						"ipv6",
					]
				}
				failtime: {
					description: [
						"Number of retry attempts before the server is considered down (1 - 10)",
					]
					type: "int"
				}
				gateway_ip: {
					description: [
						"Gateway IP address used to probe the server.",
					]
					type: "str"
				}
				gateway_ip6: {
					description: [
						"Gateway IPv6 address used to probe the server.",
					]
					type: "str"
				}
				ha_priority: {
					description: [
						"HA election priority (1 - 50).",
					]
					type: "int"
				}
				http_agent: {
					description: [
						"String in the http-agent field in the HTTP header.",
					]
					type: "str"
				}
				http_get: {
					description: [
						"If you are monitoring an HTML server you can send an HTTP-GET request with a custom string. Use this option to define the string.",
					]
					type: "str"
				}
				http_match: {
					description: [
						"String that you expect to see in the HTTP-GET requests of the traffic to be monitored.",
					]
					type: "str"
				}
				interval: {
					description: [
						"Detection interval (1 - 3600 sec).",
					]
					type: "int"
				}
				name: {
					description: [
						"Link monitor name.",
					]
					required: true
					type:     "str"
				}
				packet_size: {
					description: [
						"Packet size of a twamp test session,",
					]
					type: "int"
				}
				password: {
					description: [
						"Twamp controller password in authentication mode",
					]
					type: "str"
				}
				port: {
					description: [
						"Port number of the traffic to be used to monitor the server.",
					]
					type: "int"
				}
				protocol: {
					description: [
						"Protocols used to monitor the server.",
					]
					type: "str"
					choices: [
						"ping",
						"tcp-echo",
						"udp-echo",
						"http",
						"twamp",
						"ping6",
					]
				}
				recoverytime: {
					description: [
						"Number of successful responses received before server is considered recovered (1 - 10).",
					]
					type: "int"
				}
				security_mode: {
					description: [
						"Twamp controller security mode.",
					]
					type: "str"
					choices: [
						"none",
						"authentication",
					]
				}
				server: {
					description: [
						"IP address of the server(s) to be monitored.",
					]
					type: "list"
					suboptions: address: {
						description: [
							"Server address.",
						]
						required: true
						type:     "str"
					}
				}
				source_ip: {
					description: [
						"Source IP address used in packet to the server.",
					]
					type: "str"
				}
				source_ip6: {
					description: [
						"Source IPv6 address used in packet to the server.",
					]
					type: "str"
				}
				srcintf: {
					description: [
						"Interface that receives the traffic to be monitored. Source system.interface.name.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable/disable this link monitor.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				update_cascade_interface: {
					description: [
						"Enable/disable update cascade interface.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				update_static_route: {
					description: [
						"Enable/disable updating the static route.",
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
