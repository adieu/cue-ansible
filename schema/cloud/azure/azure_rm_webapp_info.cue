package ansible

module: azure_rm_webapp_info: {
	module: "azure_rm_webapp_info"

	version_added: "2.9"

	short_description: "Get Azure web app facts"

	description: [
		"Get facts for a specific web app or all web app in a resource group, or all web app in current subscription.",
	]

	options: {
		name: description: [
			"Only show results for a specific web app.",
		]
		resource_group: description: [
			"Limit results by resource group.",
		]
		return_publish_profile: {
			description: [
				"Indicate whether to return publishing profile of the web app.",
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
