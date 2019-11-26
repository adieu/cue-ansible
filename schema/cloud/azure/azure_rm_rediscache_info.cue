package ansible

module: azure_rm_rediscache_info: {
	module: "azure_rm_rediscache_info"

	version_added: "2.9"

	short_description: "Get Azure Cache for Redis instance facts"

	description: [
		"Get facts for Azure Cache for Redis instance.",
	]

	options: {
		resource_group: {
			description: [
				"The resource group to search for the desired Azure Cache for Redis.",
			]
			required: true
		}
		name: description: [
			"Limit results to a specific Azure Cache for Redis.",
		]
		return_access_keys: {
			description: [
				"Indicate weather to return access keys of the Azure Cache for Redis.",
			]
			default: false
			type:    "bool"
		}
		tags: description: [
			"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: ["Yunge Zhu (@yungezz)"]
}
