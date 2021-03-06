package ansible

module: azure_rm_resource_info: {
	module:            "azure_rm_resource_info"
	version_added:     "2.9"
	short_description: "Generic facts of Azure resources"
	description: [
		"Obtain facts of any resource using Azure REST API.",
		"This module gives access to resources that are not supported via Ansible modules.",
		"Refer to U(https://docs.microsoft.com/en-us/rest/api/) regarding details related to specific resource REST API.",
	]

	options: {
		url: description: [
			"Azure RM Resource URL.",
		]
		api_version: description: [
			"Specific API version to be used.",
		]
		provider: description: [
			"Provider type, should be specified in no URL is given.",
		]
		resource_group: description: [
			"Resource group to be used.",
			"Required if URL is not specified.",
		]
		resource_type: description: [
			"Resource type.",
		]
		resource_name: description: [
			"Resource name.",
		]
		subresource: {
			description: [
				"List of subresources.",
			]
			suboptions: {
				namespace: description: [
					"Subresource namespace.",
				]
				type: description: [
					"Subresource type.",
				]
				name: description: [
					"Subresource name.",
				]
			}
		}
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
