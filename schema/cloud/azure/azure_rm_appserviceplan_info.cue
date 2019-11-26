package ansible

module: azure_rm_appserviceplan_info: {
	module: "azure_rm_appserviceplan_info"

	version_added: "2.9"

	short_description: "Get azure app service plan facts"

	description: [
		"Get facts for a specific app service plan or all app service plans in a resource group, or all app service plan in current subscription.",
	]

	options: {
		name: description: [
			"Only show results for a specific app service plan.",
		]
		resource_group: description: [
			"Limit results by resource group.",
		]
		tags: description: [
			"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: ["Yunge Zhu (@yungezz)"]
}
