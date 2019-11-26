package ansible

module: ios_static_route: {
	module:            "ios_static_route"
	version_added:     "2.4"
	author:            "Ricardo Carrillo Cruz (@rcarrillocruz)"
	short_description: "Manage static IP routes on Cisco IOS network devices"
	description: [
		"This module provides declarative management of static IP routes on Cisco IOS network devices.",
	]

	notes: [
		"Tested against IOS 15.6",
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
		vrf: {
			description: [
				"VRF of the static route.",
			]
			version_added: "2.8"
		}
		interface: {
			description: [
				"Interface of the static route.",
			]
			version_added: "2.8"
		}
		name: {
			description: [
				"Name of the static route",
			]
			aliases: ["description"]
			version_added: "2.8"
		}
		admin_distance: description: [
			"Admin distance of the static route.",
		]
		tag: {
			description: [
				"Set tag of the static route.",
			]
			version_added: "2.8"
		}
		track: {
			description: [
				"Tracked item to depend on for the static route.",
			]
			version_added: "2.8"
		}
		aggregate: description: "List of static route definitions."
		state: {
			description: [
				"State of the static route configuration.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "ios"
}
