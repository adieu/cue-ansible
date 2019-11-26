package ansible

module: eos_linkagg: {
	module:            "eos_linkagg"
	version_added:     "2.5"
	author:            "Trishna Guha (@trishnaguha)"
	short_description: "Manage link aggregation groups on Arista EOS network devices"
	description: [
		"This module provides declarative management of link aggregation groups on Arista EOS network devices.",
	]

	deprecated: {
		removed_in:  "2.13"
		alternative: "eos_lag_interfaces"
		why:         "Updated modules released with more functionality"
	}
	notes: [
		"Tested against EOS 4.15",
	]
	options: {
		group: description: [
			"Channel-group number for the port-channel Link aggregation group. Range 1-2000.",
		]

		mode: {
			description: [
				"Mode of the link aggregation group.",
			]
			choices: ["active", "on", "passive"]
		}
		members: description: [
			"List of members of the link aggregation group.",
		]
		min_links: description: [
			"Minimum number of ports required up before bringing up the link aggregation group.",
		]

		aggregate: description: "List of link aggregation definitions."
		state: {
			description: [
				"State of the link aggregation group.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
		purge: {
			description: [
				"Purge links not defined in the I(aggregate) parameter.",
			]
			default: false
			type:    "bool"
		}
	}
	extends_documentation_fragment: "eos"
}
