package ansible

module: ios_l2_interfaces: {
	module:            "ios_l2_interfaces"
	version_added:     2.9
	short_description: "Manage Layer-2 interface on Cisco IOS devices."
	description:       "This module provides declarative management of Layer-2 interface on Cisco IOS devices."
	author:            "Sumit Jaiswal (@justjais)"
	notes: [
		"Tested against Cisco IOSv Version 15.2 on VIRL",
		"This module works with connection C(network_cli). See L(IOS Platform Options,../network/user_guide/platform_ios.html).",
	]

	options: {
		config: {
			description: "A dictionary of Layer-2 interface options"
			type:        "list"
			elements:    "dict"
			suboptions: {
				name: {
					description: [
						"Full name of the interface excluding any logical unit number, i.e. GigabitEthernet0/1.",
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
						"Switchport mode trunk command to configure the interface as a Layer 2 trunk. Note The encapsulation is always set to dot1q.",
					]

					type: "dict"
					suboptions: {
						allowed_vlans: {
							description: [
								"List of allowed VLANs in a given trunk port. These are the only VLANs that will be configured on the trunk.",
							]

							type: "list"
						}
						native_vlan: {
							description: [
								"Native VLAN to be configured in trunk port. It's used as the trunk native VLAN ID.",
							]
							type: "int"
						}
						encapsulation: {
							description: [
								"Trunking encapsulation when interface is in trunking mode.",
							]
							choices: ["dot1q", "isl", "negotiate"]
							type: "str"
						}
						pruning_vlans: {
							description: [
								"Pruning VLAN to be configured in trunk port. It's used as the trunk pruning VLAN ID.",
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
