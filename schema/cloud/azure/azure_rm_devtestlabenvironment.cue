package ansible

module: azure_rm_devtestlabenvironment: {
	module:            "azure_rm_devtestlabenvironment"
	version_added:     "2.8"
	short_description: "Manage Azure DevTest Lab Environment instance"
	description: [
		"Create, update and delete instance of Azure DevTest Lab Environment.",
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
		user_name: {
			description: [
				"The name of the user profile.",
			]
			required: true
		}
		name: {
			description: [
				"The name of the environment.",
			]
			required: true
		}
		location: description: [
			"The location of the resource.",
		]
		deployment_template: description: [
			"The Azure Resource Manager template's identifier.",
		]
		deployment_parameters: {
			description: [
				"The parameters of the Azure Resource Manager template.",
			]
			type: "list"
			suboptions: {
				name: description: [
					"The name of the template parameter.",
				]
				value: description: [
					"The value of the template parameter.",
				]
			}
		}
		state: {
			description: [
				"Assert the state of the Environment.",
				"Use C((present) to create or update an Environment and C(absent) to delete it.",
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
