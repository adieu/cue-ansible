package ansible

module: cp_mgmt_run_ips_update: {
	module:            "cp_mgmt_run_ips_update"
	short_description: "Runs IPS database update. If \"package-path\" is not provided server will try to get the latest package from the User Center."
	description: [
		"Runs IPS database update. If \"package-path\" is not provided server will try to get the latest package from the User Center.",
		"All operations are performed over Web Services API.",
	]
	version_added: "2.9"
	author:        "Or Soffer (@chkp-orso)"
	options: package_path: {
		description: [
			"Offline update package path.",
		]
		type: "str"
	}
	extends_documentation_fragment: "checkpoint_commands"
}
