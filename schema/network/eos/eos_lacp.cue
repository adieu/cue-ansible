package ansible

module: eos_lacp: {
	module:            "eos_lacp"
	version_added:     2.9
	short_description: "Manage Global Link Aggregation Control Protocol (LACP) on Arista EOS devices."
	description: [
		"This module manages Global Link Aggregation Control Protocol (LACP) on Arista EOS devices.",
	]
	author: "Nathaniel Case (@Qalthos)"
	notes: [
		"Tested against Arista EOS 4.20.10M",
		"This module works with connection C(network_cli). See the L(EOS Platform Options,../network/user_guide/platform_eos.html).",
	]

	options: {
		config: {
			description: "LACP global options."
			type:        "dict"
			suboptions: system: {
				description: "LACP system options."
				type:        "dict"
				suboptions: priority: {
					description: [
						"The system priority to use in LACP negotiations.",
						"Lower value is higher priority.",
						"Refer to vendor documentation for valid values.",
					]
					type: "int"
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
				"deleted",
			]
			default: "merged"
		}
	}
}
