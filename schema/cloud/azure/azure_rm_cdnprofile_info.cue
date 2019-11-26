package ansible

module: azure_rm_cdnprofile_info: {
	module: "azure_rm_cdnprofile_info"

	version_added: "2.9"

	short_description: "Get Azure CDN profile facts"

	description: [
		"Get facts for a specific Azure CDN profile or all CDN profiles.",
	]

	options: {
		name: description: [
			"Limit results to a specific CDN profile.",
		]
		resource_group: description: [
			"The resource group to search for the desired CDN profile.",
		]
		tags: description: [
			"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Hai Cao (@caohai)",
		"Yunge Zhu (@yungezz)",
	]
}
