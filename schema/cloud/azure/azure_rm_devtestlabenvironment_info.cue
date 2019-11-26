package ansible

module: azure_rm_devtestlabenvironment_info: {
	module:            "azure_rm_devtestlabenvironment_info"
	version_added:     "2.9"
	short_description: "Get Azure Environment facts"
	description: [
		"Get facts of Azure Environment.",
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
		user_name: {
			description: [
				"The name of the user profile.",
			]
			required: true
			type:     "str"
		}
		name: {
			description: [
				"The name of the environment.",
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
