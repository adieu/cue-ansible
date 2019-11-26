package ansible

module: iosxr_lacp: {
	module:            "iosxr_lacp"
	version_added:     2.9
	short_description: "Manage Global Link Aggregation Control Protocol (LACP) on IOS-XR devices."
	description: [
		"This module manages Global Link Aggregation Control Protocol (LACP) on IOS-XR devices.",
	]
	notes: [
		"Tested against IOS-XR 6.1.3.",
		"This module works with connection C(network_cli). See L(the IOS-XR Platform Options,../network/user_guide/platform_iosxr.html).",
	]
	author: "Nilashish Chakraborty (@nilashishc)"
	options: {
		config: {
			description: "The provided configurations."
			type:        "dict"
			suboptions: system: {
				description: "This option sets the default system parameters for LACP bundles."
				type:        "dict"
				suboptions: {
					priority: {
						description: [
							"The system priority to use in LACP negotiations.",
							"Lower value is higher priority.",
							"Refer to vendor documentation for valid values.",
						]
						type: "int"
					}
					mac: {
						type: "dict"
						description: [
							"The system MAC related configuration for LACP.",
						]
						suboptions: address: {
							description: [
								"The system ID to use in LACP negotiations.",
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
				"deleted",
			]
			default: "merged"
		}
	}
}
