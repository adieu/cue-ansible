package ansible

module: ios_lag_interfaces: {
	module:            "ios_lag_interfaces"
	version_added:     2.9
	short_description: "Manage Link Aggregation on Cisco IOS devices."
	description:       "This module manages properties of Link Aggregation Group on Cisco IOS devices."
	author:            "Sumit Jaiswal (@justjais)"
	notes: [
		"Tested against Cisco IOSv Version 15.2 on VIRL",
		"This module works with connection C(network_cli). See L(IOS Platform Options,../network/user_guide/platform_ios.html).",
	]

	options: {
		config: {
			description: "A list of link aggregation group configurations."
			type:        "list"
			elements:    "dict"
			suboptions: {
				name: {
					description: [
						"ID of Ethernet Channel of interfaces.",
						"Refer to vendor documentation for valid port values.",
					]
					type:     "str"
					required: true
				}
				members: {
					description: [
						"Interface options for the link aggregation group.",
					]
					type: "list"
					suboptions: {
						member: {
							description: [
								"Interface member of the link aggregation group.",
							]
							type: "str"
						}
						mode: {
							description: [
								"Etherchannel Mode of the interface for link aggregation.",
							]
							type: "str"
							choices: [
								"auto",
								"on",
								"desirable",
								"active",
								"passive",
							]
						}
						link: {
							description: [
								"Assign a link identifier used for load-balancing.",
								"Refer to vendor documentation for valid values.",
								"NOTE, parameter only supported on Cisco IOS XE platform.",
							]
							type: "int"
						}
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
