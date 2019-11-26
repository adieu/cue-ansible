package ansible

module: onyx_l3_interface: {
	module:            "onyx_l3_interface"
	version_added:     "2.5"
	author:            "Samer Deeb (@samerd)"
	short_description: "Manage L3 interfaces on Mellanox ONYX network devices"
	description: [
		"This module provides declarative management of L3 interfaces on Mellanox ONYX network devices.",
	]

	options: {
		name: description: [
			"Name of the L3 interface.",
		]
		ipv4: description: [
			"IPv4 of the L3 interface.",
		]
		ipv6: description: [
			"IPv6 of the L3 interface (not supported for now).",
		]
		aggregate: description: "List of L3 interfaces definitions"
		purge: {
			description: [
				"Purge L3 interfaces not defined in the I(aggregate) parameter.",
			]
			default: false
			type:    "bool"
		}
		state: {
			description: [
				"State of the L3 interface configuration.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
