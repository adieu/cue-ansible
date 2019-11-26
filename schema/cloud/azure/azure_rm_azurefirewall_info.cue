package ansible

module: azure_rm_azurefirewall_info: {
	module:            "azure_rm_azurefirewall_info"
	version_added:     "2.9"
	short_description: "Get AzureFirewall info"
	description: [
		"Get info of AzureFirewall.",
	]
	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			type: "str"
		}
		name: {
			description: [
				"Resource name.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: [
		"azure",
	]
	author: [
		"Liu Qingyi (@smile37773)",
	]
}
