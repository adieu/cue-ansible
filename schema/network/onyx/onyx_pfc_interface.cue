package ansible

module: onyx_pfc_interface: {
	module:            "onyx_pfc_interface"
	version_added:     "2.5"
	author:            "Samer Deeb (@samerd)"
	short_description: "Manage priority flow control on ONYX network devices"
	description: [
		"This module provides declarative management of priority flow control (PFC) on interfaces of Mellanox ONYX network devices.",
	]

	notes: [
		"Tested on ONYX 3.6.4000",
	]
	options: {
		name: description: [
			"Name of the interface PFC should be configured on.",
		]
		aggregate: description: "List of interfaces PFC should be configured on."
		purge: {
			description: [
				"Purge interfaces not defined in the aggregate parameter.",
			]
			type:    "bool"
			default: false
		}
		state: {
			description: [
				"State of the PFC configuration.",
			]
			default: "enabled"
			choices: ["enabled", "disabled"]
		}
	}
}
