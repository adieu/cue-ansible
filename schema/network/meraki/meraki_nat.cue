package ansible

module: meraki_nat: {
	module:            "meraki_nat"
	short_description: "Manage NAT rules in Meraki cloud"
	version_added:     "2.9"
	description: [
		"Allows for creation, management, and visibility of NAT rules (1:1, 1:many, port forwarding) within Meraki.",
	]

	options: {
		state: {
			description: [
				"Create or modify an organization.",
			]
			choices: ["present", "query"]
			default: "present"
			type:    "str"
		}
		net_name: {
			description: [
				"Name of a network.",
			]
			aliases: ["name", "network"]
			type: "str"
		}
		net_id: {
			description: [
				"ID number of a network.",
			]
			type: "str"
		}
		org_id: {
			description: [
				"ID of organization associated to a network.",
			]
			type: "str"
		}
		subset: {
			description: [
				"Specifies which NAT components to query.",
			]
			choices: ["1:1", "1:many", "all", "port_forwarding"]
			default: "all"
			type:    "list"
		}
		one_to_one: {
			description: [
				"List of 1:1 NAT rules.",
			]
			type: "list"
			suboptions: {
				name: {
					description: [
						"A descriptive name for the rule.",
					]
					type: "str"
				}
				public_ip: {
					description: [
						"The IP address that will be used to access the internal resource from the WAN.",
					]
					type: "str"
				}
				lan_ip: {
					description: [
						"The IP address of the server or device that hosts the internal resource that you wish to make available on the WAN.",
					]
					type: "str"
				}
				uplink: {
					description: [
						"The physical WAN interface on which the traffic will arrive.",
					]
					choices: ["both", "internet1", "internet2"]
				}
				allowed_inbound: {
					description: [
						"The ports this mapping will provide access on, and the remote IPs that will be allowed access to the resource.",
					]
					type: "list"
					suboptions: {
						protocol: {
							description: [
								"Protocol to apply NAT rule to.",
							]
							choices: ["any", "icmp-ping", "tcp", "udp"]
							type:    "str"
							default: "any"
						}
						destination_ports: {
							description: [
								"List of ports or port ranges that will be forwarded to the host on the LAN.",
							]
							type: "list"
						}
						allowed_ips: {
							description: [
								"ranges of WAN IP addresses that are allowed to make inbound connections on the specified ports or port ranges, or 'any'.",
							]
							type: "list"
						}
					}
				}
			}
		}
		one_to_many: {
			description: [
				"List of 1:many NAT rules.",
			]
			type: "list"
			suboptions: {
				public_ip: {
					description: [
						"The IP address that will be used to access the internal resource from the WAN.",
					]
					type: "str"
				}
				uplink: {
					description: [
						"The physical WAN interface on which the traffic will arrive.",
					]
					choices: ["both", "internet1", "internet2"]
					type: "str"
				}
				port_rules: {
					description: [
						"List of associated port rules.",
					]
					type: "list"
					suboptions: {
						name: {
							description: [
								"A description of the rule.",
							]
							type: "str"
						}
						protocol: {
							description: [
								"Protocol to apply NAT rule to.",
							]
							choices: ["tcp", "udp"]
							type: "str"
						}
						public_port: {
							description: [
								"Destination port of the traffic that is arriving on the WAN.",
							]
							type: "str"
						}
						local_ip: {
							description: [
								"Local IP address to which traffic will be forwarded.",
							]
							type: "str"
						}
						local_port: {
							description: [
								"Destination port of the forwarded traffic that will be sent from the MX to the specified host on the LAN.",
								"If you simply wish to forward the traffic without translating the port, this should be the same as the Public port.",
							]
							type: "str"
						}
						allowed_ips: {
							description: [
								"Remote IP addresses or ranges that are permitted to access the internal resource via this port forwarding rule, or 'any'.",
							]
							type: "list"
						}
					}
				}
			}
		}
		port_forwarding: {
			description: [
				"List of port forwarding rules.",
			]
			type: "list"
			suboptions: {
				name: {
					description: [
						"A descriptive name for the rule.",
					]
					type: "str"
				}
				lan_ip: {
					description: [
						"The IP address of the server or device that hosts the internal resource that you wish to make available on the WAN.",
					]
					type: "str"
				}
				uplink: {
					description: [
						"The physical WAN interface on which the traffic will arrive.",
					]
					choices: ["both", "internet1", "internet2"]
					type: "str"
				}
				public_port: {
					description: [
						"A port or port ranges that will be forwarded to the host on the LAN.",
					]
					type: "str"
				}
				local_port: {
					description: [
						"A port or port ranges that will receive the forwarded traffic from the WAN.",
					]
					type: "str"
				}
				allowed_ips: description: [
					"List of ranges of WAN IP addresses that are allowed to make inbound connections on the specified ports or port ranges (or any).",
				]
				protocol: {
					description: [
						"Protocol to forward traffic for.",
					]
					choices: ["tcp", "udp"]
					type: "str"
				}
			}
		}
	}

	author: [
		"Kevin Breit (@kbreit)",
	]
	extends_documentation_fragment: "meraki"
}
