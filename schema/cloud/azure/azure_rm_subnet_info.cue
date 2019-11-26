package ansible

module: azure_rm_subnet_info: {
	module:            "azure_rm_subnet_info"
	version_added:     "2.8"
	short_description: "Get Azure Subnet facts"
	description: [
		"Get facts of Azure Subnet.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			required: true
		}
		virtual_network_name: {
			description: [
				"The name of the virtual network.",
			]
			required: true
		}
		name: description: [
			"The name of the subnet.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
