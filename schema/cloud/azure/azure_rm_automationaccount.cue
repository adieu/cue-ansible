package ansible

module: azure_rm_automationaccount: {
	module:            "azure_rm_automationaccount"
	version_added:     "2.9"
	short_description: "Manage Azure Automation account"
	description: [
		"Create, delete an Azure Automation account.",
	]
	options: {
		resource_group: {
			description: [
				"Name of resource group.",
			]
			type:     "str"
			required: true
		}
		name: {
			description: [
				"Name of the automation account.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"State of the automation account. Use C(present) to create or update a automation account and C(absent) to delete an automation account.",
			]
			type:    "str"
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
		location: {
			description: [
				"Location of the resource.",
				"If not specified, use resource group location.",
			]
			type: "str"
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Yuwei Zhou (@yuwzho)",
	]
}
