package ansible

module: lxca_cmms: {
	version_added: "2.8"
	author: [
		"Naval Patel (@navalkp)",
		"Prashant Bhosale (@prabhosa)",
	]
	module:            "lxca_cmms"
	short_description: "Custom module for lxca cmms inventory utility"
	description: [
		"This module returns/displays a inventory details of cmms",
	]

	options: {
		uuid: description:
			"uuid of device, this is string with length greater than 16."

		command_options: {
			description:
					"options to filter nodes information"
			default: "cmms"
			choices: [
				"cmms",
				"cmms_by_uuid",
				"cmms_by_chassis_uuid",
			]
		}

		chassis: description:
			"uuid of chassis, this is string with length greater than 16."
	}

	extends_documentation_fragment: ["lxca_common"]
}
