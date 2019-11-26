package ansible

module: vyos_interfaces: {
	module:            "vyos_interfaces"
	version_added:     2.9
	short_description: "Manages interface attributes of VyOS network devices."
	description: [
		"This module manages the interface attributes on VyOS network devices.",
		"This module supports managing base attributes of Ethernet, Bonding, VXLAN, Loopback and Virtual Tunnel Interfaces.",
	]

	notes: [
		"Tested against VyOS 1.1.8 (helium).",
		"This module works with connection C(network_cli). See L(the VyOS OS Platform Options,../network/user_guide/platform_vyos.html).",
	]
	author: "Nilashish Chakraborty (@nilashishc)"
	options: {
		config: {
			description: "The provided interfaces configuration."
			type:        "list"
			suboptions: {
				name: {
					description: [
						"Full name of the interface, e.g. eth0, eth1, bond0, vti1, vxlan2.",
					]
					type:     "str"
					required: true
				}
				description: {
					description: [
						"Interface description.",
					]
					type: "str"
				}
				duplex: {
					description: [
						"Interface duplex mode.",
						"Applicable for Ethernet interfaces only.",
					]
					choices: ["full", "half", "auto"]
					type: "str"
				}
				enabled: {
					default: true
					description: [
						"Administrative state of the interface.",
						"Set the value to C(true) to administratively enable the interface or C(false) to disable it.",
					]

					type: "bool"
				}
				mtu: {
					description: [
						"MTU for a specific interface. Refer to vendor documentation for valid values.",
						"Applicable for Ethernet, Bonding, VXLAN and Virtual Tunnel interfaces.",
					]
					type: "int"
				}
				speed: {
					description: [
						"Interface link speed.",
						"Applicable for Ethernet interfaces only.",
					]
					type: "str"
					choices: ["auto", "10", "100", "1000", "2500", "10000"]
				}
				vifs: {
					description: [
						"Virtual sub-interfaces related configuration.",
						"802.1Q VLAN interfaces are represented as virtual sub-interfaces in VyOS.",
					]
					type: "list"
					suboptions: {
						vlan_id: {
							description: [
								"Identifier for the virtual sub-interface.",
							]
							type: "int"
						}
						description: {
							description: [
								"Virtual sub-interface description.",
							]
							type: "str"
						}
						enabled: {
							description: [
								"Administrative state of the virtual sub-interface.",
								"Set the value to C(true) to administratively enable the interface or C(false) to disable it.",
							]

							type:    "bool"
							default: true
						}
						mtu: {
							description: [
								"MTU for the virtual sub-interface.",
								"Refer to vendor documentation for valid values.",
							]
							type: "int"
						}
					}
				}
			}
		}
		state: {
			description: [
				"The state of the configuration after module completion.",
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
