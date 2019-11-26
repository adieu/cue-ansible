package ansible

module: azure_rm_aks_info: {
	module: "azure_rm_aks_info"

	version_added: "2.9"

	short_description: "Get Azure Kubernetes Service facts"

	description: [
		"Get facts for a specific Azure Kubernetes Service or all Azure Kubernetes Services.",
	]

	options: {
		name: description: [
			"Limit results to a specific resource group.",
		]
		resource_group: description: [
			"The resource group to search for the desired Azure Kubernetes Service",
		]
		tags: description: [
			"Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.",
		]
		show_kubeconfig: {
			description: [
				"Show kubeconfig of the AKS cluster.",
				"Note the operation will cost more network overhead, not recommended when listing AKS.",
			]
			version_added: "2.8"
			choices: [
				"user",
				"admin",
			]
		}
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: ["Yuwei Zhou (@yuwzho)"]
}
