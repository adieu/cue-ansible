package ansible

module: azure_rm_keyvault_info: {
	module:            "azure_rm_keyvault_info"
	version_added:     "2.9"
	short_description: "Get Azure Key Vault facts"
	description: [
		"Get facts of Azure Key Vault.",
	]

	options: {
		resource_group: description: [
			"The name of the resource group to which the key vault belongs.",
		]
		name: description: [
			"The name of the key vault.",
		]
		tags: description: [
			"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Yunge Zhu (@yungezz)",
	]
}
