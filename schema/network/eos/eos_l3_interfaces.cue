package ansible

module: eos_l3_interfaces: {
	module:            "eos_l3_interfaces"
	version_added:     2.9
	short_description: "Manages L3 interface attributes of Arista EOS devices."
	description:       "This module provides declarative management of Layer 3 interfaces on Arista EOS devices."
	author:            "Nathaniel Case (@qalthos)"
	notes: [
		"Tested against Arista EOS 4.20.10M",
		"This module works with connection C(network_cli). See the L(EOS Platform Options,../network/user_guide/platform_eos.html).",
	]

	options: {
		config: {
			description: "A dictionary of Layer 3 interface options"
			type:        "list"
			elements:    "dict"
			suboptions: {
				name: {
					description: [
						"Full name of the interface, i.e. Ethernet1.",
					]
					type:     "str"
					required: true
				}
				ipv4: {
					description: [
						"List of IPv4 addresses to be set for the Layer 3 interface mentioned in I(name) option.",
					]
					type:     "list"
					elements: "dict"
					suboptions: {
						address: {
							description: [
								"IPv4 address to be set in the format <ipv4 address>/<mask> eg. 192.0.2.1/24, or C(dhcp) to query DHCP for an IP address.",
							]

							type: "str"
						}
						secondary: {
							description: [
								"Whether or not this address is a secondary address.",
							]
							type:    "bool"
							default: false
						}
					}
				}
				ipv6: {
					description: [
						"List of IPv6 addresses to be set for the Layer 3 interface mentioned in I(name) option.",
					]
					type:     "list"
					elements: "dict"
					suboptions: address: {
						description: [
							"IPv6 address to be set in the address format is <ipv6 address>/<mask> eg. 2001:db8:2201:1::1/64 or C(auto-config) to use SLAAC to chose an address.",
						]

						type: "str"
					}
				}
			}
		}
		state: {
			description: [
				"The state of the configuration after module completion",
			]
			type: "str"
			choices: [
				"merged",
				"replaced",
				"overridden",
				"deleted",
			]
			default: "merged"
		}
	}
}
