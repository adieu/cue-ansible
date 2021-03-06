package ansible

module: azure_rm_roleassignment_info: {
	module:            "azure_rm_roleassignment_info"
	version_added:     "2.9"
	short_description: "Gets Azure Role Assignment facts"
	description: [
		"Gets facts of Azure Role Assignment.",
	]

	options: {
		scope: description: [
			"The scope that the role assignment applies to.",
			"For example, use /subscriptions/{subscription-id}/ for a subscription.",
			"/subscriptions/{subscription-id}/resourceGroups/{resourcegroup-name} for a resource group.",
			"/subscriptions/{subscription-id}/resourceGroups/{resourcegroup-name}/providers/{resource-provider}/{resource-type}/{resource-name} for a resource.",
		]
		name: description: [
			"Name of role assignment.",
			"Mutual exclusive with I(assignee).",
		]
		assignee: description: [
			"Object id of a user, group or service principal.",
			"Mutually exclusive with I(name).",
		]
		role_definition_id: description: [
			"Resource id of role definition.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Yunge Zhu(@yungezz)",
	]
}
