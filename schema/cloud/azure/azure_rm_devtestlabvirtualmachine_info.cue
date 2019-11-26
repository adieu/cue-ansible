package ansible

module: azure_rm_devtestlabvirtualmachine_info: {
	module:            "azure_rm_devtestlabvirtualmachine_info"
	version_added:     "2.9"
	short_description: "Get Azure DevTest Lab Virtual Machine facts"
	description: [
		"Get facts of Azure DevTest Lab Virtual Machine.",
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
				"The name of the virtual machine.",
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
