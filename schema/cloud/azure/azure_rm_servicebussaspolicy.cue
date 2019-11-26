package ansible

module: azure_rm_servicebussaspolicy: {
	module:            "azure_rm_servicebussaspolicy"
	version_added:     "2.8"
	short_description: "Manage Azure Service Bus SAS policy"
	description: [
		"Create, update or delete an Azure Service Bus SAS policy.",
	]
	options: {
		resource_group: {
			description: [
				"Name of resource group.",
			]
			required: true
		}
		name: {
			description: [
				"Name of the SAS policy.",
			]
			required: true
		}
		state: {
			description: [
				"Assert the state of the route. Use C(present) to create or update and C(absent) to delete.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
		namespace: {
			description: [
				"Manage SAS policy for a namespace without C(queue) or C(topic) set.",
				"Manage SAS policy for a queue or topic under this namespace.",
			]
			required: true
		}
		queue: description: [
			"Type of the messaging queue.",
			"Cannot set C(topc) when this field set.",
		]
		topic: description: [
			"Name of the messaging topic.",
			"Cannot set C(queue) when this field set.",
		]
		regenerate_primary_key: {
			description: [
				"Regenerate the SAS policy primary key.",
			]
			type:    "bool"
			default: false
		}
		regenerate_secondary_key: {
			description: [
				"Regenerate the SAS policy secondary key.",
			]
			type:    "bool"
			default: false
		}
		rights: {
			description: [
				"Claim rights of the SAS policy.",
			]
			required: true
			choices: [
				"manage",
				"listen",
				"send",
				"listen_send",
			]
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Yuwei Zhou (@yuwzho)",
	]
}
