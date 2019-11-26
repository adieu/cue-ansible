package ansible

module: azure_rm_devtestlabschedule_info: {
	module:            "azure_rm_devtestlabschedule_info"
	version_added:     "2.9"
	short_description: "Get Azure Schedule facts"
	description: [
		"Get facts of Azure Schedule.",
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
		name: {
			description: [
				"The name of the schedule.",
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
