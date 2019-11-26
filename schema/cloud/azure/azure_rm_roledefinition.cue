package ansible

module: azure_rm_roledefinition: {
	module:            "azure_rm_roledefinition"
	version_added:     "2.8"
	short_description: "Manage Azure Role Definition"
	description: [
		"Create, update and delete instance of Azure Role Definition.",
	]

	options: {
		name: {
			description: [
				"Unique name of role definition.",
			]
			required: true
		}
		permissions: {
			description: [
				"Set of role definition permissions.",
				"See U(https://docs.microsoft.com/en-us/azure/app-service/app-service-web-overview) for more info.",
			]
			suboptions: {
				actions: {
					description: [
						"List of allowed actions.",
					]
					type: "list"
				}
				not_actions: {
					description: [
						"List of denied actions.",
					]
					type: "list"
				}
				data_actions: {
					description: [
						"List of allowed data actions.",
					]
					type: "list"
				}
				not_data_actions: {
					description: [
						"List of denied data actions.",
					]
					type: "list"
				}
			}
		}
		assignable_scopes: description: [
			"List of assignable scopes of this definition.",
		]
		scope: description: [
			"The scope of the role definition.",
		]
		description: description: [
			"The role definition description.",
		]
		state: {
			description: [
				"Assert the state of the role definition.",
				"Use C(present) to create or update a role definition; use C(absent) to delete it.",
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
	]

	author: [
		"Yunge Zhu(@yungezz)",
	]
}
