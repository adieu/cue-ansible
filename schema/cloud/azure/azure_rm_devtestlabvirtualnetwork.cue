package ansible

module: azure_rm_devtestlabvirtualnetwork: {
	module:            "azure_rm_devtestlabvirtualnetwork"
	version_added:     "2.8"
	short_description: "Manage Azure DevTest Lab Virtual Network instance"
	description: [
		"Create, update and delete instance of Azure DevTest Lab Virtual Network.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			required: true
		}
		lab_name: {
			description: [
				"The name of the lab.",
			]
			required: true
		}
		name: {
			description: [
				"The name of the virtual network.",
			]
			required: true
		}
		location: description: [
			"The location of the resource.",
		]
		description: description: [
			"The description of the virtual network.",
		]
		state: {
			description: [
				"Assert the state of the Virtual Network.",
				"Use C(present) to create or update an Virtual Network and C(absent) to delete it.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
