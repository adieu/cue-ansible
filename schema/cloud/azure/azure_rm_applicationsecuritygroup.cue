package ansible

module: azure_rm_applicationsecuritygroup: {
	module:            "azure_rm_applicationsecuritygroup"
	version_added:     "2.8"
	short_description: "Manage Azure Application Security Group"
	description: [
		"Create, update and delete instance of Azure Application Security Group.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			required: true
		}
		name: {
			description: [
				"The name of the application security group.",
			]
			required: true
		}
		location: description: [
			"Resource location. If not set, location from the resource group will be used as default.",
		]
		state: {
			description: [
				"Assert the state of the Application Security Group.",
				"Use C(present) to create or update an Application Security Group and C(absent) to delete it.",
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
		"Yunge Zhu (@yungezz)",
	]
}
