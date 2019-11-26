package ansible

module: lxca_nodes: {
	version_added: "2.8"
	author: [
		"Naval Patel (@navalkp)",
		"Prashant Bhosale (@prabhosa)",
	]
	module:            "lxca_nodes"
	short_description: "Custom module for lxca nodes inventory utility"
	description: [
		"This module returns/displays a inventory details of nodes",
	]

	options: {
		uuid: description:
			"uuid of device, this is string with length greater than 16."

		command_options: {
			description:
					"options to filter nodes information"
			default: "nodes"
			choices: [
				"nodes",
				"nodes_by_uuid",
				"nodes_by_chassis_uuid",
				"nodes_status_managed",
				"nodes_status_unmanaged",
			]
		}

		chassis: description:
			"uuid of chassis, this is string with length greater than 16."
	}

	extends_documentation_fragment: ["lxca_common"]
}
