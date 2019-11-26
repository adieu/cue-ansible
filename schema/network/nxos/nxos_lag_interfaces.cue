package ansible

module: nxos_lag_interfaces: {
	module:            "nxos_lag_interfaces"
	version_added:     2.9
	short_description: "Manages link aggregation groups of NX-OS Interfaces"
	description:       "This module manages attributes of link aggregation groups of NX-OS Interfaces."
	author:            "Trishna Guha (@trishnaguha)"
	options: {
		config: {
			description: "A list of link aggregation group configurations."
			type:        "list"
			suboptions: {
				name: {
					description: [
						"Name of the link aggregation group (LAG).",
					]
					type:     "str"
					required: true
				}
				members: {
					description: [
						"The list of interfaces that are part of the group.",
					]
					type: "list"
					suboptions: {
						member: {
							description: [
								"The interface name.",
							]
							type: "str"
						}
						mode: {
							description: [
								"Link aggregation group (LAG).",
							]
							type: "str"
							choices: [
								"active",
								true,
								"passive",
							]
						}
						force: {
							description: [
								"When true it forces link aggregation group members to match what is declared in the members param. This can be used to remove members.",
							]

							type: "bool"
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
	notes: [
		"Tested against NXOS 7.3.(0)D1(1) on VIRL.",
		"This module works with connection C(network_cli).",
	]
}
