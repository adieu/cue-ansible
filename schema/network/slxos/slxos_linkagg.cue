package ansible

module: slxos_linkagg: {
	module:            "slxos_linkagg"
	version_added:     "2.6"
	author:            "Matthew Stone (@bigmstone)"
	short_description: "Manage link aggregation groups on Extreme Networks SLX-OS network devices"
	description: [
		"This module provides declarative management of link aggregation groups on Extreme Networks SLX-OS network devices.",
	]

	notes: [
		"Tested against SLX-OS 17s.1.02",
	]
	options: {
		group: description: [
			"Channel-group number for the port-channel Link aggregation group. Range 1-1024.",
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
			type: "bool"
		}
	}
}
