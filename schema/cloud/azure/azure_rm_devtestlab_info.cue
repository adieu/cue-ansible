package ansible

module: azure_rm_devtestlab_info: {
	module:            "azure_rm_devtestlab_info"
	version_added:     "2.9"
	short_description: "Get Azure DevTest Lab facts"
	description: [
		"Get facts of Azure DevTest Lab.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			type: "str"
		}
		name: {
			description: [
				"The name of the lab.",
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

	author: ["Zim Kalinowski (@zikalino)"]
}
