package ansible

module: azure_rm_devtestlabpolicy_info: {
	module:            "azure_rm_devtestlabpolicy_info"
	version_added:     "2.9"
	short_description: "Get Azure DTL Policy facts"
	description: [
		"Get facts of Azure DTL Policy.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			required: true
			type:     "str"
		}
		lab_name: {
			description: [
				"The name of the lab.",
			]
			required: true
			type:     "str"
		}
		policy_set_name: {
			description: [
				"The name of the policy set.",
			]
			required: true
			type:     "str"
		}
		name: {
			description: [
				"The name of the policy.",
			]
			type: "str"
		}
		tags: {
			description: [
				"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
			]
			type: "list"
		}
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
