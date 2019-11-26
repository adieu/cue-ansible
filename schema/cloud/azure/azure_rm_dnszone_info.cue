package ansible

module: azure_rm_dnszone_info: {
	module: "azure_rm_dnszone_info"

	version_added: "2.9"

	short_description: "Get DNS zone facts"

	description: [
		"Get facts for a specific DNS zone or all DNS zones within a resource group.",
	]

	options: {
		resource_group: description: [
			"Limit results by resource group. Required when filtering by name.",
		]
		name: description: [
			"Only show results for a specific zone.",
		]
		tags: description: [
			"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
		]
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Obezimnaka Boms (@ozboms)",
	]
}
