package ansible

module: azure_rm_virtualnetworkpeering_info: {
	module:            "azure_rm_virtualnetworkpeering_info"
	version_added:     "2.9"
	short_description: "Get facts of Azure Virtual Network Peering"
	description: [
		"Get facts of Azure Virtual Network Peering.",
	]

	options: {
		resource_group: {
			description: [
				"Name of a resource group where the vnet exists.",
			]
			required: true
		}
		virtual_network: {
			description: [
				"Name or resource ID of a virtual network.",
			]
			required: true
		}
		name: description: [
			"Name of the virtual network peering.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: ["Yunge Zhu (@yungezz)"]
}
