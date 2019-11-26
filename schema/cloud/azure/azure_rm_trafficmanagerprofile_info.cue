package ansible

module: azure_rm_trafficmanagerprofile_info: {
	module: "azure_rm_trafficmanagerprofile_info"

	version_added: "2.9"

	short_description: "Get Azure Traffic Manager profile facts"

	description: [
		"Get facts for a Azure specific Traffic Manager profile or all Traffic Manager profiles.",
	]

	options: {
		name: description: [
			"Limit results to a specific Traffic Manager profile.",
		]
		resource_group: description: [
			"The resource group to search for the desired Traffic Manager profile.",
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
