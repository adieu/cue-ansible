package ansible

module: azure_rm_containerregistry_info: {
	module:            "azure_rm_containerregistry_info"
	version_added:     "2.9"
	short_description: "Get Azure Container Registry facts"
	description: [
		"Get facts for Container Registry.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group to which the container registry belongs.",
			]
			required: true
		}
		name: description: [
			"The name of the container registry.",
		]
		retrieve_credentials: {
			description: [
				"Retrieve credentials for container registry.",
			]
			type:    "bool"
			default: false
		}
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
