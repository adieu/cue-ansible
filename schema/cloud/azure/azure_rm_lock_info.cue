package ansible

module: azure_rm_lock_info: {
	module:            "azure_rm_lock_info"
	version_added:     "2.9"
	short_description: "Manage Azure locks"
	description: [
		"Create, delete an Azure lock.",
	]
	options: {
		name: {
			description: [
				"Name of the lock.",
			]
			type:     "str"
			required: true
		}
		managed_resource_id: {
			description: [
				"ID of the resource where need to manage the lock.",
				"Get this via facts module.",
				"Cannot be set mutual with I(resource_group).",
				"Manage subscription if both I(managed_resource_id) and I(resource_group) not defined.",
				"'/subscriptions/{subscriptionId}' for subscriptions.",
				"'/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}' for resource groups.",
				"'/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{namespace}/{resourceType}/{resourceName}' for resources.",
				"Can get all locks with 'child scope' for this resource, use I(managed_resource_id) in response for further management.",
			]
			type: "str"
		}
		resource_group: {
			description: [
				"Resource group name where need to manage the lock.",
				"The lock is in the resource group level.",
				"Cannot be set mutual with I(managed_resource_id).",
				"Query subscription if both I(managed_resource_id) and I(resource_group) not defined.",
				"Can get all locks with 'child scope' in this resource group, use the I(managed_resource_id) in response for further management.",
			]
			type: "str"
		}
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Yuwei Zhou (@yuwzho)",
	]
}
