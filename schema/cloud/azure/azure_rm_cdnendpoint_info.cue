package ansible

module: azure_rm_cdnendpoint_info: {
	module: "azure_rm_cdnendpoint_info"

	version_added: "2.9"

	short_description: "Get Azure CDN endpoint facts"

	description: [
		"Get facts for a specific Azure CDN endpoint or all Azure CDN endpoints.",
	]

	options: {
		resource_group: {
			description: [
				"Name of resource group where this CDN profile belongs to.",
			]
			required: true
		}
		profile_name: {
			description: [
				"Name of CDN profile.",
			]
			required: true
		}
		name: description: [
			"Limit results to a specific Azure CDN endpoint.",
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
		"Yunge zhu (@yungezz)",
	]
}
