package ansible

module: azure_rm_automationaccount_info: {
	module:            "azure_rm_automationaccount_info"
	version_added:     "2.9"
	short_description: "Get Azure automation account facts"
	description: [
		"Get facts of automation account.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			type:     "str"
			required: true
		}
		name: {
			description: [
				"The name of the automation account.",
			]
			type: "str"
		}
		tags: {
			description: [
				"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
			]
			type: "list"
		}
		list_statistics: {
			description: [
				"List statistics details for a automation account.",
				"Note this will cost network overhead, suggest only used when I(name) set.",
			]
			type: "bool"
		}
		list_usages: {
			description: [
				"List usage details for a automation account.",
				"Note this will cost network overhead, suggest only used when I(name) set.",
			]
			type: "bool"
		}
		list_keys: {
			description: [
				"List keys for a automation account.",
				"Note this will cost network overhead, suggest only used when I(name) set.",
			]
			type: "bool"
		}
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Yuwei Zhou (@yuwzho)",
	]
}
