package ansible

module: bigip_firewall_rule: {
	module:            "bigip_firewall_rule"
	short_description: "Manage AFM Firewall rules"
	description: [
		"Manages firewall rules in an AFM firewall policy. New rules will always be added to the end of the policy. Rules can be re-ordered using the C(bigip_security_policy) module. Rules can also be pre-ordered using the C(bigip_security_policy) module and then later updated using the C(bigip_firewall_rule) module.",
	]

	version_added: 2.7
	options: {
		name: {
			description: [
				"Specifies the name of the rule.",
			]
			type:     "str"
			required: true
		}
		parent_policy: {
			description: [
				"The policy which contains the rule to be managed.",
				"One of either C(parent_policy) or C(parent_rule_list) is required.",
			]
			type: "str"
		}
		parent_rule_list: {
			description: [
				"The rule list which contains the rule to be managed.",
				"One of either C(parent_policy) or C(parent_rule_list) is required.",
			]
			type: "str"
		}
		action: {
			description: [
				"Specifies the action for the firewall rule.",
				"When C(accept), allows packets with the specified source, destination, and protocol to pass through the firewall. Packets that match the rule, and are accepted, traverse the system as if the firewall is not present.",
				"When C(drop), drops packets with the specified source, destination, and protocol. Dropping a packet is a silent action with no notification to the source or destination systems. Dropping the packet causes the connection to be retried until the retry threshold is reached.",
				"When C(reject), rejects packets with the specified source, destination, and protocol. When a packet is rejected the firewall sends a destination unreachable message to the sender.",
				"When C(accept-decisively), allows packets with the specified source, destination, and protocol to pass through the firewall, and does not require any further processing by any of the further firewalls. Packets that match the rule, and are accepted, traverse the system as if the firewall is not present. If the Rule List is applied to a virtual server, management IP, or self IP firewall rule, then Accept Decisively is equivalent to Accept.",
				"When creating a new rule, if this parameter is not provided, the default is C(reject).",
			]

			type: "str"
			choices: [
				"accept",
				"drop",
				"reject",
				"accept-decisively",
			]
		}
		status: {
			description: [
				"Indicates the activity state of the rule or rule list.",
				"When C(disabled), specifies that the rule or rule list does not apply at all.",
				"When C(enabled), specifies that the system applies the firewall rule or rule list to the given context and addresses.",
				"When C(scheduled), specifies that the system applies the rule or rule list according to the specified schedule.",
				"When creating a new rule, if this parameter is not provided, the default is C(enabled).",
			]

			type: "str"
			choices: [
				"enabled",
				"disabled",
				"scheduled",
			]
		}
		schedule: {
			description: [
				"Specifies a schedule for the firewall rule.",
				"You configure schedules to define days and times when the firewall rule is made active.",
			]

			type: "str"
		}
		description: {
			description: [
				"The rule description.",
			]
			type: "str"
		}
		irule: {
			description: [
				"Specifies an iRule that is applied to the firewall rule.",
				"An iRule can be started when the firewall rule matches traffic.",
			]
			type: "str"
		}
		protocol: {
			description: [
				"Specifies the protocol to which the rule applies.",
				"Protocols may be specified by either their name or numeric value.",
				"A special protocol value C(any) can be specified to match any protocol. The numeric equivalent of this protocol is C(255).",
			]

			type: "str"
		}
		source: {
			description: [
				"Specifies packet sources to which the rule applies.",
				"Leaving this field blank applies the rule to all addresses and all ports.",
				"You can specify the following source items. An IPv4 or IPv6 address, an IPv4 or IPv6 address range, geographic location, VLAN, address list, port, port range, port list or address list.",
				"You can specify a mix of different types of items for the source address.",
			]
			suboptions: {
				address: {
					description: [
						"Specifies a specific IP address.",
					]
					type: "str"
				}
				address_list: {
					description: [
						"Specifies an existing address list.",
					]
					type: "str"
				}
				address_range: {
					description: [
						"Specifies an address range.",
					]
					type: "str"
				}
				country: {
					description: [
						"Specifies a country code.",
					]
					type: "str"
				}
				port: {
					description: [
						"Specifies a single numeric port.",
						"This option is only valid when C(protocol) is C(tcp)(6) or C(udp)(17).",
					]
					type: "int"
				}
				port_list: {
					description: [
						"Specifes an existing port list.",
						"This option is only valid when C(protocol) is C(tcp)(6) or C(udp)(17).",
					]
					type: "str"
				}
				port_range: {
					description: [
						"Specifies a range of ports, which is two port values separated by a hyphen. The port to the left of the hyphen should be less than the port to the right.",
						"This option is only valid when C(protocol) is C(tcp)(6) or C(udp)(17).",
					]
					type: "str"
				}
				vlan: {
					description: [
						"Specifies VLANs to which the rule applies.",
						"The VLAN source refers to the packet's source.",
					]
					type: "str"
				}
			}
			type: "list"
		}
		destination: {
			description: [
				"Specifies packet destinations to which the rule applies.",
				"Leaving this field blank applies the rule to all addresses and all ports.",
				"You can specify the following destination items. An IPv4 or IPv6 address, an IPv4 or IPv6 address range, geographic location, VLAN, address list, port, port range, port list or address list.",
				"You can specify a mix of different types of items for the source address.",
			]
			suboptions: {
				address: {
					description: [
						"Specifies a specific IP address.",
					]
					type: "str"
				}
				address_list: {
					description: [
						"Specifies an existing address list.",
					]
					type: "str"
				}
				address_range: {
					description: [
						"Specifies an address range.",
					]
					type: "str"
				}
				country: {
					description: [
						"Specifies a country code.",
					]
					type: "str"
				}
				port: {
					description: [
						"Specifies a single numeric port.",
						"This option is only valid when C(protocol) is C(tcp)(6) or C(udp)(17).",
					]
					type: "int"
				}
				port_list: {
					description: [
						"Specifes an existing port list.",
						"This option is only valid when C(protocol) is C(tcp)(6) or C(udp)(17).",
					]
					type: "str"
				}
				port_range: {
					description: [
						"Specifies a range of ports, which is two port values separated by a hyphen. The port to the left of the hyphen should be less than the port to the right.",
						"This option is only valid when C(protocol) is C(tcp)(6) or C(udp)(17).",
					]
					type: "str"
				}
			}
			type: "list"
		}
		logging: {
			description: [
				"Specifies whether logging is enabled or disabled for the firewall rule.",
				"When creating a new rule, if this parameter is not specified, the default if C(no).",
			]

			type: "bool"
		}
		rule_list: {
			description: [
				"Specifies an existing rule list to use in the rule.",
				"This parameter is mutually exclusive with many of the other individual-rule specific settings. This includes C(logging), C(action), C(source), C(destination), C(irule'), C(protocol) and C(logging).",
				"This parameter is only used when C(parent_policy) is specified, otherwise it is ignored.",
			]
			type: "str"
		}
		icmp_message: {
			description: [
				"Specifies the Internet Control Message Protocol (ICMP) or ICMPv6 message C(type) and C(code) that the rule uses.",
				"This parameter is only relevant when C(protocol) is either C(icmp)(1) or C(icmpv6)(58).",
			]

			suboptions: {
				type: {
					description: [
						"Specifies the type of ICMP message.",
						"You can specify control messages, such as Echo Reply (0) and Destination Unreachable (3), or you can specify C(any) to indicate that the system applies the rule for all ICMP messages.",
						"You can also specify an arbitrary ICMP message.",
						"The ICMP protocol contains definitions for the existing message type and number pairs.",
					]

					type: "str"
				}
				code: {
					description: [
						"Specifies the code returned in response to the specified ICMP message type.",
						"You can specify codes, each set appropriate to the associated type, such as No Code (0) (associated with Echo Reply (0)) and Host Unreachable (1) (associated with Destination Unreachable (3)), or you can specify C(any) to indicate that the system applies the rule for all codes in response to that specific ICMP message.",
						"You can also specify an arbitrary code.",
						"The ICMP protocol contains definitions for the existing message code and number pairs.",
					]

					type: "str"
				}
			}
			type: "list"
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
		state: {
			description: [
				"When C(state) is C(present), ensures that the rule exists.",
				"When C(state) is C(absent), ensures that the rule is removed.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
