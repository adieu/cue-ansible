package ansible

module: azure_rm_devtestlabvirtualnetwork_info: {
	module:            "azure_rm_devtestlabvirtualnetwork_info"
	version_added:     "2.9"
	short_description: "Get Azure DevTest Lab Virtual Network facts"
	description: [
		"Get facts of Azure DevTest Lab Virtual Network.",
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
				"The name of DevTest Lab Virtual Network.",
			]
			type: "str"
		}
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
