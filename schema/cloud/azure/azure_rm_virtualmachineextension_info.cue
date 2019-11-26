package ansible

module: azure_rm_virtualmachineextension_info: {
	module:            "azure_rm_virtualmachineextension_info"
	version_added:     "2.9"
	short_description: "Get Azure Virtual Machine Extension facts"
	description: [
		"Get facts of Azure Virtual Machine Extension.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			required: true
		}
		virtual_machine_name: {
			description: [
				"The name of the virtual machine containing the extension.",
			]
			required: true
		}
		name: description: [
			"The name of the virtual machine extension.",
		]
		tags: description: [
			"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
