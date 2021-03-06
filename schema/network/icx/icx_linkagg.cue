package ansible

module: icx_linkagg: {
	module:            "icx_linkagg"
	version_added:     "2.9"
	author:            "Ruckus Wireless (@Commscope)"
	short_description: "Manage link aggregation groups on Ruckus ICX 7000 series switches"
	description: [
		"This module provides declarative management of link aggregation groups on Ruckus ICX network devices.",
	]

	notes: [
		"Tested against ICX 10.1.",
		"For information on using ICX platform, see L(the ICX OS Platform Options guide,../network/user_guide/platform_icx.html).",
	]
	options: {
		group: {
			description: [
				"Channel-group number for the port-channel Link aggregation group. Range 1-255 or set to 'auto' to auto-generates a LAG ID",
			]

			type: "int"
		}
		name: {
			description: [
				"Name of the LAG",
			]
			type: "str"
		}
		mode: {
			description: [
				"Mode of the link aggregation group.",
			]
			type: "str"
			choices: ["dynamic", "static"]
		}
		members: {
			description: [
				"List of port members or ranges of the link aggregation group.",
			]
			type: "list"
		}
		state: {
			description: [
				"State of the link aggregation group.",
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
		aggregate: {
			description: [
				"List of link aggregation definitions.",
			]
			type: "list"
			suboptions: {
				group: {
					description: [
						"Channel-group number for the port-channel Link aggregation group. Range 1-255 or set to 'auto' to auto-generates a LAG ID",
					]

					type: "int"
				}
				name: {
					description: [
						"Name of the LAG",
					]
					type: "str"
				}
				mode: {
					description: [
						"Mode of the link aggregation group.",
					]
					type: "str"
					choices: ["dynamic", "static"]
				}
				members: {
					description: [
						"List of port members or ranges of the link aggregation group.",
					]
					type: "list"
				}
				state: {
					description: [
						"State of the link aggregation group.",
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
				"Purge links not defined in the I(aggregate) parameter.",
			]
			type:    "bool"
			default: false
		}
	}
}
