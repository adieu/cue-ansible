package ansible

module: vultr_account_info: {
	module:            "vultr_account_info"
	short_description: "Get information about the Vultr account."
	description: [
		"Get infos about account balance, charges and payments.",
	]
	version_added:                  "2.9"
	author:                         "René Moser (@resmo)"
	extends_documentation_fragment: "vultr"
}
