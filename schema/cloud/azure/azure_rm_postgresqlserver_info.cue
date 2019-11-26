package ansible

module: azure_rm_postgresqlserver_info: {
	module:            "azure_rm_postgresqlserver_info"
	version_added:     "2.9"
	short_description: "Get Azure PostgreSQL Server facts"
	description: [
		"Get facts of PostgreSQL Server.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.",
			]
			required: true
			type:     "str"
		}
		name: {
			description: [
				"The name of the server.",
			]
			type: "str"
		}
		tags: {
			description: [
				"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
			]
			type: "list"
		}
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
