package ansible

module: azure_rm_routetable: {
	module:            "azure_rm_routetable"
	version_added:     "2.7"
	short_description: "Manage Azure route table resource"
	description: [
		"Create, update or delete a route table.",
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
				"Name of the route table.",
			]
			required: true
		}
		state: {
			description: [
				"Assert the state of the route table. Use C(present) to create or update and C(absent) to delete.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
		disable_bgp_route_propagation: {
			description: [
				"Specified whether to disable the routes learned by BGP on that route table.",
			]
			type:    "bool"
			default: false
		}
		location: description: [
			"Region of the resource.",
			"Derived from I(resource_group) if not specified.",
		]
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Yuwei Zhou (@yuwzho)",
	]
}
