package ansible

module: nxos_static_route: {
	module:                         "nxos_static_route"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages static route configuration"
	description: [
		"Manages static route configuration",
	]
	author: "Gabriele Gerbino (@GGabriele)"
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"If no vrf is supplied, vrf is set to default.",
		"If C(state=absent), the route will be removed, regardless of the non-required parameters.",
	]

	options: {
		prefix: {
			description: [
				"Destination prefix of static route.",
			]
			required: true
			aliases: [
				"address",
			]
		}
		next_hop: {
			description: [
				"Next hop address or interface of static route. If interface, it must be the fully-qualified interface name.",
			]

			required: true
		}
		vrf: {
			description: [
				"VRF for static route.",
			]
			default: "default"
		}
		tag: description: [
			"Route tag value (numeric) or keyword 'default'.",
		]
		route_name: description: [
			"Name of the route or keyword 'default'. Used with the name parameter on the CLI.",
		]
		pref: {
			description: [
				"Preference or administrative difference of route (range 1-255) or keyword 'default'.",
			]
			aliases: [
				"admin_distance",
			]
		}
		aggregate: {
			description:   "List of static route definitions"
			version_added: 2.5
		}
		track: {
			description: [
				"Track value (range 1 - 512). Track must already be configured on the device before adding the route.",
			]
			version_added: "2.8"
		}
		state: {
			description: [
				"Manage the state of the resource.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
	}
}
