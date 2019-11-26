package ansible

module: nxos_bfd_interfaces: {
	module:            "nxos_bfd_interfaces"
	version_added:     2.9
	short_description: "Manages BFD attributes of nxos interfaces."
	description:       "Manages attributes of Bidirectional Forwarding Detection (BFD) on the interface."
	author:            "Chris Van Heuveln (@chrisvanheuveln)"
	notes:
		null, options: {
		config: {
			description: "The provided configuration"
			type:        "list"
			elements:    "dict"
			suboptions: {
				name: {
					type:        "str"
					description: "The name of the interface."
				}
				bfd: {
					type: "str"
					description: [
						"Enable/Disable Bidirectional Forwarding Detection (BFD) on the interface.",
					]
					choices: [
						"enable",
						"disable",
					]
				}
				echo: {
					type: "str"
					description: [
						"Enable/Disable BFD Echo functionality on the interface.",
					]
					choices: [
						"enable",
						"disable",
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
