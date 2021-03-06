package ansible

module: azure_rm_trafficmanagerendpoint: {
	module:            "azure_rm_trafficmanagerendpoint"
	version_added:     "2.7"
	short_description: "Manage Azure Traffic Manager endpoint"
	description: [
		"Create, update and delete Azure Traffic Manager endpoint.",
	]

	options: {
		resource_group: {
			description: [
				"Name of a resource group where the Traffic Manager endpoint exists or will be created.",
			]
			type:     "str"
			required: true
		}
		name: {
			description: [
				"The name of the endpoint.",
			]
			type:     "str"
			required: true
		}
		profile_name: {
			description: [
				"Name of Traffic Manager profile where this endpoints attaches to.",
			]
			type:     "str"
			required: true
		}
		type: {
			description: [
				"The type of the endpoint.",
			]
			required: true
			choices: [
				"azure_endpoints",
				"external_endpoints",
				"nested_endpoints",
			]
		}
		target_resource_id: {
			description: [
				"The Azure Resource URI of the of the endpoint.",
				"Not applicable to endpoints of I(type=external_endpoints).",
			]
			type: "str"
		}
		target: {
			description: [
				"The fully-qualified DNS name of the endpoint.",
			]
			type: "str"
		}
		enabled: {
			description: [
				"The status of the endpoint.",
			]
			type:    "bool"
			default: true
		}
		weight: {
			description: [
				"The weight of this endpoint when traffic manager profile has routing_method of C(weighted).",
				"Possible values are from 1 to 1000.",
			]
			type: "int"
		}
		priority: {
			description: [
				"The priority of this endpoint when traffic manager profile has routing_method of I(priority).",
				"Possible values are from 1 to 1000, lower values represent higher priority.",
				"This is an optional parameter. If specified, it must be specified on all endpoints.",
				"No two endpoints can share the same priority value.",
			]
			type: "int"
		}
		location: {
			description: [
				"Specifies the location of the external or nested endpoints when using the 'Performance' traffic routing method.",
			]
			type: "str"
		}
		min_child_endpoints: {
			description: [
				"The minimum number of endpoints that must be available in the child profile in order for the parent profile to be considered available.",
				"Only applicable to endpoint of I(type=nested_endpoints).",
			]
			type: "int"
		}
		geo_mapping: {
			description: [
				"The list of countries/regions mapped to this endpoint when traffic manager profile has routing_method of C(geographic).",
			]
			type: "list"
		}
		state: {
			description: [
				"Assert the state of the Traffic Manager endpoint. Use C(present) to create or update a Traffic Manager endpoint and C(absent) to delete it.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Hai Cao (@caohai)",
		"Yunge Zhu (@yungezz)",
	]
}
