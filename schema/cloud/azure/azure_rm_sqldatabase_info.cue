package ansible

module: azure_rm_sqldatabase_info: {
	module:            "azure_rm_sqldatabase_info"
	version_added:     "2.8"
	short_description: "Get Azure SQL Database facts"
	description: [
		"Get facts of Azure SQL Database.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.",
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
			"The name of the database.",
		]
		elastic_pool_name: description: [
			"The name of the elastic pool.",
		]
		tags: description: [
			"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
