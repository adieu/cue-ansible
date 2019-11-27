package ansible

module: nxos_hsrp_interfaces: {
	module:            "nxos_hsrp_interfaces"
	version_added:     "2.10"
	short_description: "Manages HSRP attributes of NXOS interfaces."
	description:       "Manages Hot Standby Router Protocol (HSRP) interface attributes."
	author:            "Chris Van Heuveln (@chrisvanheuveln)"
	notes:             null
	options: {
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
						"Enable/Disable HSRP Bidirectional Forwarding Detection (BFD) on the interface.",
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
				"The state the configuration should be left in",
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
