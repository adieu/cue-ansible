package ansible

module: eos_l2_interfaces: {
	module:            "eos_l2_interfaces"
	version_added:     2.9
	short_description: "Manages Layer-2 interface attributes of Arista EOS devices"
	description:       "This module provides declarative management of Layer-2 interface on Arista EOS devices."
	author:            "Nathaniel Case (@qalthos)"
	notes: [
		"Tested against Arista EOS 4.20.10M",
		"This module works with connection C(network_cli). See the L(EOS Platform Options,../network/user_guide/platform_eos.html).",
	]

	options: {
		config: {
			description: "A dictionary of Layer-2 interface options"
			type:        "list"
			elements:    "dict"
			suboptions: {
				name: {
					description: [
						"Full name of interface, e.g. Ethernet1.",
					]
					type:     "str"
					required: true
				}
				access: {
					description: [
						"Switchport mode access command to configure the interface as a layer 2 access.",
					]
					type: "dict"
					suboptions: vlan: {
						description: [
							"Configure given VLAN in access port. It's used as the access VLAN ID.",
						]
						type: "int"
					}
				}
				trunk: {
					description: [
						"Switchport mode trunk command to configure the interface as a Layer 2 trunk.",
					]
					type: "dict"
					suboptions: {
						native_vlan: {
							description: [
								"Native VLAN to be configured in trunk port. It is used as the trunk native VLAN ID.",
							]
							type: "int"
						}
						trunk_allowed_vlans: {
							description: [
								"List of allowed VLANs in a given trunk port. These are the only VLANs that will be configured on the trunk.",
							]

							type: "list"
						}
					}
				}
			}
		}
		state: {
			choices: [
				"merged",
				"replaced",
				"overridden",
				"deleted",
			]
			default: "merged"
			description: [
				"The state of the configuration after module completion",
			]
			type: "str"
		}
	}
}
