package ansible

module: azure_rm_devtestlabartifactsource_info: {
	module:            "azure_rm_devtestlabartifactsource_info"
	version_added:     "2.9"
	short_description: "Get Azure DevTest Lab Artifact Source facts"
	description: [
		"Get facts of Azure DevTest Lab Artifact Source.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			required: true
			type:     "str"
		}
		lab_name: {
			description: [
				"The name of DevTest Lab.",
			]
			required: true
			type:     "str"
		}
		name: {
			description: [
				"The name of DevTest Lab Artifact Source.",
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
