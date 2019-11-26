package ansible

module: vyos_linkagg: {
	module:            "vyos_linkagg"
	version_added:     "2.4"
	author:            "Ricardo Carrillo Cruz (@rcarrillocruz)"
	short_description: "Manage link aggregation groups on VyOS network devices"
	description: [
		"This module provides declarative management of link aggregation groups on VyOS network devices.",
	]

	deprecated: {
		removed_in:  "2.13"
		alternative: "vyos_lag_interfaces"
		why:         "Updated modules released with more functionality."
	}
	notes: [
		"Tested against VYOS 1.1.7",
	]
	options: {
		name: {
			description: [
				"Name of the link aggregation group.",
			]
			required: true
			type:     "str"
		}
		mode: {
			description: [
				"Mode of the link aggregation group.",
			]
			choices: [
				"802.3ad",
				"active-backup",
				"broadcast",
				"round-robin",
				"transmit-load-balance",
				"adaptive-load-balance",
				"xor-hash",
				"on",
			]
			type: "str"
		}
		members: {
			description: [
				"List of members of the link aggregation group.",
			]
			type: "list"
		}
		aggregate: {
			description: "List of link aggregation definitions."
			type:        "list"
		}
		state: {
			description: [
				"State of the link aggregation group.",
			]
			default: "present"
			choices: ["present", "absent", "up", "down"]
			type: "str"
		}
	}
	extends_documentation_fragment: "vyos"
}
