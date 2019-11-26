package ansible

module: nxos_linkagg: {
	module:                         "nxos_linkagg"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.5"
	short_description:              "Manage link aggregation groups on Cisco NXOS devices."
	description: [
		"This module provides declarative management of link aggregation groups on Cisco NXOS devices.",
	]

	deprecated: {
		removed_in:  "2.13"
		alternative: "nxos_lag_interfaces"
		why:         "Updated modules released with more functionality."
	}
	author: [
		"Trishna Guha (@trishnaguha)",
	]
	notes: [
		"Tested against NXOSv 7.0(3)I5(1).",
		"C(state=absent) removes the portchannel config and interface if it already exists. If members to be removed are not explicitly passed, all existing members (if any), are removed.",
		"Members must be a list.",
		"LACP needs to be enabled first if active/passive modes are used.",
	]
	options: {
		group: {
			description: [
				"Channel-group number for the port-channel Link aggregation group.",
			]

			required: true
			type:     "str"
		}
		mode: {
			description: [
				"Mode for the link aggregation group.",
			]
			choices: ["active", "on", "passive"]
			default: "on"
			type:    "str"
		}
		min_links: {
			description: [
				"Minimum number of ports required up before bringing up the link aggregation group.",
			]

			type: "int"
		}
		members: {
			description: [
				"List of interfaces that will be managed in the link aggregation group.",
			]
			type: "list"
		}
		force: {
			description: [
				"When true it forces link aggregation group members to match what is declared in the members param. This can be used to remove members.",
			]

			type:    "bool"
			default: "no"
		}
		aggregate: {
			description: "List of link aggregation definitions."
			type:        "list"
		}
		state: {
			description: [
				"State of the link aggregation group.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		purge: {
			description: [
				"Purge links not defined in the I(aggregate) parameter.",
			]
			type:    "bool"
			default: "no"
		}
	}
}
