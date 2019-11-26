package ansible

module: azure_rm_sqlserver_info: {
	module:            "azure_rm_sqlserver_info"
	version_added:     "2.9"
	short_description: "Get SQL Server facts"
	description: [
		"Get facts of SQL Server.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.",
			]
			required: true
		}
		server_name: description: [
			"The name of the server.",
		]
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
