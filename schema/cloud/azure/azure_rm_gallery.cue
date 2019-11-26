package ansible

module: azure_rm_gallery: {
	module:            "azure_rm_gallery"
	version_added:     "2.9"
	short_description: "Manage Azure Shared Image Gallery instance"
	description: [
		"Create, update and delete instance of Azure Shared Image Gallery (SIG).",
	]
	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			required: true
			type:     "str"
		}
		name: {
			description: [
				"The name of the Shared Image Gallery.",
				"Valid names consist of less than 80 alphanumeric characters, underscores and periods.",
			]
			required: true
			type:     "str"
		}
		location: {
			description: [
				"Resource location.",
			]
			type: "str"
		}
		description: {
			description: [
				"The description of this Shared Image Gallery resource. This property is updatable.",
			]
			type: "str"
		}
		state: {
			description: [
				"Assert the state of the Gallery.",
				"Use C(present) to create or update an Gallery and C(absent) to delete it.",
			]
			default: "present"
			type:    "str"
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
