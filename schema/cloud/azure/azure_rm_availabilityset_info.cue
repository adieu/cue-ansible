package ansible

module: azure_rm_availabilityset_info: {
	module: "azure_rm_availabilityset_info"

	version_added: "2.9"

	short_description: "Get Azure Availability Set facts"

	description: [
		"Get facts for a specific availability set or all availability sets.",
	]

	options: {
		name: description: [
			"Limit results to a specific availability set.",
		]
		resource_group: description: [
			"The resource group to search for the desired availability set.",
		]
		tags: description: [
			"List of tags to be matched.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: ["Julien Stroheker (@julienstroheker)"]
}
