package ansible

module: ios_lacp: {
	module:            "ios_lacp"
	version_added:     2.9
	short_description: "Manage Global Link Aggregation Control Protocol (LACP) on Cisco IOS devices."
	description:       "This module provides declarative management of Global LACP on Cisco IOS network devices."
	author:            "Sumit Jaiswal (@justjais)"
	notes: [
		"Tested against Cisco IOSv Version 15.2 on VIRL",
		"This module works with connection C(network_cli), See L(IOS Platform Options,../network/user_guide/platform_ios.html).",
	]

	options: {
		config: {
			description: "The provided configurations."
			type:        "dict"
			suboptions: system: {
				description: "This option sets the default system parameters for LACP."
				type:        "dict"
				suboptions: priority: {
					description: [
						"LACP priority for the system.",
						"Refer to vendor documentation for valid values.",
					]
					type:     "int"
					required: true
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
				"deleted",
			]
			default: "merged"
		}
	}
}
