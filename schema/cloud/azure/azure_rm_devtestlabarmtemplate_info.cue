package ansible

module: azure_rm_devtestlabarmtemplate_info: {
	module:            "azure_rm_devtestlabarmtemplate_info"
	version_added:     "2.9"
	short_description: "Get Azure DevTest Lab ARM Template facts"
	description: [
		"Get facts of Azure DevTest Lab ARM Template.",
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
				"The name of the lab.",
			]
			required: true
			type:     "str"
		}
		artifact_source_name: {
			description: [
				"The name of the artifact source.",
			]
			required: true
			type:     "str"
		}
		name: {
			description: [
				"The name of the ARM template.",
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
