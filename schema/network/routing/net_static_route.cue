package ansible

module: net_static_route: {
	module:            "net_static_route"
	version_added:     "2.4"
	author:            "Ricardo Carrillo Cruz (@rcarrillocruz)"
	short_description: "Manage static IP routes on network appliances (routers, switches et. al.)"
	description: [
		"This module provides declarative management of static IP routes on network appliances (routers, switches et. al.).",
	]

	deprecated: {
		removed_in:  "2.13"
		alternative: "Use platform-specific \"[netos]_static_route\" module"
		why:         "Updated modules released with more functionality"
	}
	extends_documentation_fragment: "network_agnostic"

	options: {
		prefix: {
			description: [
				"Network prefix of the static route.",
			]
			required: true
		}
		mask: {
			description: [
				"Network prefix mask of the static route.",
			]
			required: true
		}
		next_hop: {
			description: [
				"Next hop IP of the static route.",
			]
			required: true
		}
		admin_distance: description: [
			"Admin distance of the static route.",
		]
		aggregate: description: "List of static route definitions"
		purge: {
			description: [
				"Purge static routes not defined in the I(aggregate) parameter.",
			]
			default: false
		}
		state: {
			description: [
				"State of the static route configuration.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
