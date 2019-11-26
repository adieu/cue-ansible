package ansible

module: icx_static_route: {
	module:            "icx_static_route"
	version_added:     "2.9"
	author:            "Ruckus Wireless (@Commscope)"
	short_description: "Manage static IP routes on Ruckus ICX 7000 series switches"
	description: [
		"This module provides declarative management of static IP routes on Ruckus ICX network devices.",
	]

	notes: [
		"Tested against ICX 10.1.",
		"For information on using ICX platform, see L(the ICX OS Platform Options guide,../network/user_guide/platform_icx.html).",
	]
	options: {
		prefix: {
			description: [
				"Network prefix of the static route.",
			]
			type: "str"
		}
		mask: {
			description: [
				"Network prefix mask of the static route.",
			]
			type: "str"
		}
		next_hop: {
			description: [
				"Next hop IP of the static route.",
			]
			type: "str"
		}
		admin_distance: {
			description: [
				"Admin distance of the static route. Range is 1 to 255.",
			]
			type: "int"
		}
		aggregate: {
			description: "List of static route definitions."
			type:        "list"
			suboptions: {
				prefix: {
					description: [
						"Network prefix of the static route.",
					]
					type: "str"
				}
				mask: {
					description: [
						"Network prefix mask of the static route.",
					]
					type: "str"
				}
				next_hop: {
					description: [
						"Next hop IP of the static route.",
					]
					type: "str"
				}
				admin_distance: {
					description: [
						"Admin distance of the static route. Range is 1 to 255.",
					]
					type: "int"
				}
				state: {
					description: [
						"State of the static route configuration.",
					]
					type: "str"
					choices: ["present", "absent"]
				}
				check_running_config: {
					description: [
						"Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.",
					]

					type: "bool"
				}
			}
		}
		purge: {
			description: [
				"Purge routes not defined in the I(aggregate) parameter.",
			]
			default: false
			type:    "bool"
		}
		state: {
			description: [
				"State of the static route configuration.",
			]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
		check_running_config: {
			description: [
				"Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.",
			]

			type:    "bool"
			default: true
		}
	}
}
