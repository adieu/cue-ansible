package ansible

module: azure_rm_virtualmachine_info: {
	module: "azure_rm_virtualmachine_info"

	version_added: "2.9"

	short_description: "Get virtual machine facts"

	description: [
		"Get facts for one or all virtual machines in a resource group.",
	]

	options: {
		resource_group: description: [
			"Name of the resource group containing the virtual machines (required when filtering by vm name).",
		]
		name: description: [
			"Name of the virtual machine.",
		]
		tags: description: [
			"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Gustavo Muniz do Carmo (@gustavomcarmo)",
		"Zim Kalinowski (@zikalino)",
	]
}
