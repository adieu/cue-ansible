package ansible

module: ios_vlans: {
	module:            "ios_vlans"
	version_added:     2.9
	short_description: "Manage VLANs on Cisco IOS devices."
	description:       "This module provides declarative management of VLANs on Cisco IOS network devices."
	author:            "Sumit Jaiswal (@justjais)"
	notes: [
		"Tested against Cisco IOSv Version 15.2 on VIRL",
		"This module works with connection C(network_cli). See L(IOS Platform Options,../network/user_guide/platform_ios.html).",
	]

	options: {
		config: {
			description: "A dictionary of VLANs options"
			type:        "list"
			elements:    "dict"
			suboptions: {
				name: {
					description: [
						"Ascii name of the VLAN.",
						"NOTE, I(name) should not be named/appended with I(default) as it is reserved for device default vlans.",
					]
					type: "str"
				}
				vlan_id: {
					description: [
						"ID of the VLAN. Range 1-4094",
					]
					type:     "int"
					required: true
				}
				mtu: {
					description: [
						"VLAN Maximum Transmission Unit.",
						"Refer to vendor documentation for valid values.",
					]
					type: "int"
				}
				state: {
					description: [
						"Operational state of the VLAN",
					]
					type: "str"
					choices: [
						"active",
						"suspend",
					]
				}
				remote_span: {
					description: [
						"Configure as Remote SPAN VLAN",
					]
					type: "bool"
				}
				shutdown: {
					description: [
						"Shutdown VLAN switching.",
					]
					type: "str"
					choices: [
						"enabled",
						"disabled",
					]
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
