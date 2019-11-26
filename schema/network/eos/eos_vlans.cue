package ansible

module: eos_vlans: {
	module:            "eos_vlans"
	version_added:     2.9
	short_description: "Manage VLANs on Arista EOS devices."
	description:       "This module provides declarative management of VLANs on Arista EOS network devices."
	author:            "Nathaniel Case (@qalthos)"
	notes: [
		"Tested against Arista EOS 4.20.10M",
		"This module works with connection C(network_cli). See the L(EOS Platform Options,../network/user_guide/platform_eos.html).",
	]

	options: {
		config: {
			description: "A dictionary of VLANs options"
			type:        "list"
			elements:    "dict"
			suboptions: {
				name: {
					description: [
						"Name of the VLAN.",
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
