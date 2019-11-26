package ansible

module: azure_rm_routetable_info: {
	module: "azure_rm_routetable_info"

	version_added: "2.9"

	short_description: "Get route table facts"

	description: [
		"Get facts for a specific route table or all route table in a resource group or subscription.",
	]

	options: {
		name: description: [
			"Limit results to a specific route table.",
		]
		resource_group: description: [
			"Limit results in a specific resource group.",
		]
		tags: description: [
			"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Yuwei Zhou (@yuwzho)",
	]
}
