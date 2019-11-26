package ansible

module: azure_rm_applicationsecuritygroup_info: {
	module:            "azure_rm_applicationsecuritygroup_info"
	version_added:     "2.9"
	short_description: "Get Azure Application Security Group facts"
	description: [
		"Get facts of Azure Application Security Group.",
	]

	options: {
		resource_group: description: [
			"The name of the resource group.",
		]
		name: description: [
			"The name of the application security group.",
		]
		tags: description: [
			"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Yunge Zhu (@yungezz)",
	]
}
