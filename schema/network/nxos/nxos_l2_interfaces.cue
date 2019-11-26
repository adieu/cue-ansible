package ansible

module: nxos_l2_interfaces: {
	module:            "nxos_l2_interfaces"
	version_added:     2.9
	short_description: "Manages Layer-2 Interfaces attributes of NX-OS Interfaces"
	description:       "This module manages Layer-2 interfaces attributes of NX-OS Interfaces."
	author:            "Trishna Guha (@trishnaguha)"
	notes: [
		"Tested against NXOS 7.3.(0)D1(1) on VIRL",
	]
	options: {
		config: {
			description: "A dictionary of Layer-2 interface options"
			type:        "list"
			elements:    "dict"
			suboptions: {
				name: {
					description: [
						"Full name of interface, i.e. Ethernet1/1.",
					]
					type:     "str"
					required: true
				}
				access: {
					description: [
						"Switchport mode access command to configure the interface as a Layer-2 access.",
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
						"Switchport mode trunk command to configure the interface as a Layer-2 trunk.",
					]

					type: "dict"
					suboptions: {
						native_vlan: {
							description: [
								"Native VLAN to be configured in trunk port. It is used as the trunk native VLAN ID.",
							]

							type: "int"
						}
						allowed_vlans: {
							description: [
								"List of allowed VLANs in a given trunk port. These are the only VLANs that will be configured on the trunk.",
							]

							type: "str"
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
