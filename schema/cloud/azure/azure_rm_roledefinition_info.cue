package ansible

module: azure_rm_roledefinition_info: {
	module:            "azure_rm_roledefinition_info"
	version_added:     "2.9"
	short_description: "Get Azure Role Definition facts"
	description: [
		"Get facts of Azure Role Definition.",
	]

	options: {
		scope: {
			description: [
				"The scope of role definition.",
			]
			required: true
		}
		id: description: [
			"Role definition id.",
		]
		role_name: description: [
			"Role name.",
		]
		type: {
			description: [
				"Type of role.",
			]
			choices: [
				"system",
				"custom",
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
