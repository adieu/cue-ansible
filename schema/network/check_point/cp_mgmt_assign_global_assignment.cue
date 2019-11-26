package ansible

module: cp_mgmt_assign_global_assignment: {
	module:            "cp_mgmt_assign_global_assignment"
	short_description: "assign global assignment on Check Point over Web Services API"
	description: [
		"assign global assignment on Check Point over Web Services API",
		"All operations are performed over Web Services API.",
	]
	version_added: "2.9"
	author:        "Or Soffer (@chkp-orso)"
	options: {
		dependent_domains: {
			description: [
				"N/A",
			]
			type: "list"
		}
		global_domains: {
			description: [
				"N/A",
			]
			type: "list"
		}
		details_level: {
			description: [
				"The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.",
			]

			type: "str"
			choices: ["uid", "standard", "full"]
		}
	}
	extends_documentation_fragment: "checkpoint_commands"
}
