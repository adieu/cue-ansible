package ansible

module: azure_rm_loadbalancer_info: {
	module: "azure_rm_loadbalancer_info"

	version_added: "2.9"

	short_description: "Get load balancer facts"

	description: [
		"Get facts for a specific load balancer or all load balancers.",
	]

	options: {
		name: description: [
			"Limit results to a specific resource group.",
		]
		resource_group: description: [
			"The resource group to search for the desired load balancer.",
		]
		tags: description: [
			"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
		]
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: ["Thomas Stringer (@trstringer)"]
}
