package ansible

module: azure_rm_cosmosdbaccount_info: {
	module:            "azure_rm_cosmosdbaccount_info"
	version_added:     "2.9"
	short_description: "Get Azure Cosmos DB Account facts"
	description: [
		"Get facts of Azure Cosmos DB Account.",
	]

	options: {
		resource_group: description: [
			"Name of an Azure resource group.",
		]
		name: description: [
			"Cosmos DB database account name.",
		]
		tags: description: [
			"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
		]
		retrieve_keys: {
			description: [
				"Retrieve keys and connection strings.",
			]
			type: "str"
			choices: [
				"all",
				"readonly",
			]
		}
		retrieve_connection_strings: {
			description: [
				"Retrieve connection strings.",
			]
			type: "bool"
		}
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
