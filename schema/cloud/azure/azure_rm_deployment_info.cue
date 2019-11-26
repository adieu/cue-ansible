package ansible

module: azure_rm_deployment_info: {
	module:            "azure_rm_deployment_info"
	version_added:     "2.9"
	short_description: "Get Azure Deployment facts"
	description: [
		"Get facts of Azure Deployment.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			required: true
		}
		name: description: [
			"The name of the deployment.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
