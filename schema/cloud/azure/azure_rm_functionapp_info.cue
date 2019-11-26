package ansible

module: azure_rm_functionapp_info: {
	module:            "azure_rm_functionapp_info"
	version_added:     "2.9"
	short_description: "Get Azure Function App facts"
	description: [
		"Get facts for one Azure Function App or all Function Apps within a resource group.",
	]
	options: {
		name: description: [
			"Only show results for a specific Function App.",
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
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: ["Thomas Stringer (@trstringer)"]
}
