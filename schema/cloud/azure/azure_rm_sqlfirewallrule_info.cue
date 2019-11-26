package ansible

module: azure_rm_sqlfirewallrule_info: {
	module:            "azure_rm_sqlfirewallrule_info"
	version_added:     "2.8"
	short_description: "Get Azure SQL Firewall Rule facts"
	description: [
		"Get facts of SQL Firewall Rule.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group that contains the server.",
			]
			required: true
		}
		server_name: {
			description: [
				"The name of the server.",
			]
			required: true
		}
		name: description: [
			"The name of the firewall rule.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
