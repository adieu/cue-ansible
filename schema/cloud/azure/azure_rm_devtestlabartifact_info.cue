package ansible

module: azure_rm_devtestlabartifact_info: {
	module:            "azure_rm_devtestlabartifact_info"
	version_added:     "2.9"
	short_description: "Get Azure DevTest Lab Artifact facts"
	description: [
		"Get facts of Azure DevTest Lab Artifact.",
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
				"The name of the artifact.",
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
