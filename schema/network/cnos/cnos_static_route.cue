package ansible

module: cnos_static_route: {
	module:            "cnos_static_route"
	version_added:     "2.8"
	author:            "Anil Kumar Muraleedharan (@amuraleedhar)"
	short_description: "Manage static IP routes on Lenovo CNOS network devices"
	description: [
		"This module provides declarative management of static IP routes on Lenovo CNOS network devices.",
	]

	notes: [
		"Tested against CNOS 10.10.1",
	]
	options: {
		prefix: description: [
			"Network prefix of the static route.",
		]
		mask: description: [
			"Network prefix mask of the static route.",
		]
		next_hop: description: [
			"Next hop IP of the static route.",
		]
		interface: description: [
			"Interface of the static route.",
		]
		description: {
			description: [
				"Name of the static route",
			]
			aliases: ["description"]
		}
		admin_distance: {
			description: [
				"Admin distance of the static route.",
			]
			default: 1
		}
		tag: description: [
			"Set tag of the static route.",
		]
		aggregate: description: "List of static route definitions."
		state: {
			description: [
				"State of the static route configuration.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
