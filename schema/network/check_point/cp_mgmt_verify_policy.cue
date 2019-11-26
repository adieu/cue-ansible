package ansible

module: cp_mgmt_verify_policy: {
	module:            "cp_mgmt_verify_policy"
	short_description: "Verifies the policy of the selected package."
	description: [
		"Verifies the policy of the selected package.",
		"All operations are performed over Web Services API.",
	]
	version_added: "2.9"
	author:        "Or Soffer (@chkp-orso)"
	options: policy_package: {
		description: [
			"Policy package identified by the name or UID.",
		]
		type: "str"
	}
	extends_documentation_fragment: "checkpoint_commands"
}
