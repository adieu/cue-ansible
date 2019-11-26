package ansible

module: azure_rm_virtualnetwork_info: {
	module: "azure_rm_virtualnetwork_info"

	version_added: "2.9"

	short_description: "Get virtual network facts"

	description: [
		"Get facts for a specific virtual network or all virtual networks within a resource group.",
	]

	options: {
		name: description: [
			"Only show results for a specific security group.",
		]
		resource_group: description: [
			"Limit results by resource group. Required when filtering by name.",
		]
		tags: description: [
			"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Chris Houseknecht (@chouseknecht)",
		"Matt Davis (@nitzmahone)",
	]
}
