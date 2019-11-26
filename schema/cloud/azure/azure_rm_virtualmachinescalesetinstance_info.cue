package ansible

module: azure_rm_virtualmachinescalesetinstance_info: {
	module:            "azure_rm_virtualmachinescalesetinstance_info"
	version_added:     "2.9"
	short_description: "Get Azure Virtual Machine Scale Set Instance facts"
	description: [
		"Get facts of Azure Virtual Machine Scale Set VMs.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			required: true
		}
		vmss_name: {
			description: [
				"The name of the VM scale set.",
			]
			required: true
		}
		instance_id: description: [
			"The instance ID of the virtual machine.",
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
