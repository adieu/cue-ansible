package ansible

module: azure_rm_storageaccount_info: {
	module: "azure_rm_storageaccount_info"

	version_added: "2.9"

	short_description: "Get storage account facts"

	description: [
		"Get facts for one storage account or all storage accounts within a resource group.",
	]

	options: {
		name: description: [
			"Only show results for a specific account.",
		]
		resource_group: {
			description: [
				"Limit results to a resource group. Required when filtering by name.",
			]
			aliases: [
				"resource_group_name",
			]
		}
		tags: description: [
			"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
		]
		show_connection_string: {
			description: [
				"Show the connection string for each of the storageaccount's endpoints.",
				"For convenient usage, C(show_connection_string) will also show the access keys for each of the storageaccount's endpoints.",
				"Note that it will cost a lot of time when list all storageaccount rather than query a single one.",
			]
			type:          "bool"
			version_added: "2.8"
		}
		show_blob_cors: {
			description: [
				"Show the blob CORS settings for each blob related to the storage account.",
				"Querying all storage accounts will take a long time.",
			]
			type:          "bool"
			version_added: "2.8"
		}
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Chris Houseknecht (@chouseknecht)",
		"Matt Davis (@nitzmahone)",
	]
}
