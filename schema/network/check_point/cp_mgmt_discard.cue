package ansible

module: cp_mgmt_discard: {
	module:            "cp_mgmt_discard"
	short_description: "All changes done by user are discarded and removed from database."
	description: [
		"All changes done by user are discarded and removed from database.",
		"All operations are performed over Web Services API.",
	]
	version_added: "2.9"
	author:        "Or Soffer (@chkp-orso)"
	options: uid: {
		description: [
			"Session unique identifier. Specify it to discard a different session than the one you currently use.",
		]
		type: "str"
	}
	extends_documentation_fragment: "checkpoint_commands"
}
