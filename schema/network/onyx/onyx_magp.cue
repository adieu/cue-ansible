package ansible

module: onyx_magp: {
	module:            "onyx_magp"
	version_added:     "2.5"
	author:            "Samer Deeb (@samerd)"
	short_description: "Manage MAGP protocol on Mellanox ONYX network devices"
	description: [
		"This module provides declarative management of MAGP protocol on vlan interface of Mellanox ONYX network devices.",
	]

	notes: [
		"Tested on ONYX 3.6.4000",
	]
	options: {
		magp_id: {
			description: [
				"MAGP instance number 1-255",
			]
			required: true
		}
		interface: {
			description: [
				"VLAN Interface name.",
			]
			required: true
		}
		state: {
			description: [
				"MAGP state.",
			]
			default: "present"
			choices: ["present", "absent", "enabled", "disabled"]
		}
		router_ip: description: [
			"MAGP router IP address.",
		]
		router_mac: description: ["MAGP router MAC address."]
	}
}
