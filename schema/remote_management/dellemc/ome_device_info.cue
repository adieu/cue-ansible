package ansible

module: ome_device_info: {
	module:            "ome_device_info"
	short_description: "Retrieves the information about Device."
	version_added:     "2.9"
	description: [
		"This module retrieves the list of all devices information with the exhaustive inventory of each device.",
	]

	options: {
		hostname: {
			description: [
				"Target IP Address or hostname.",
			]
			type:     "str"
			required: true
		}
		username: {
			description: [
				"Target username.",
			]
			type:     "str"
			required: true
		}
		password: {
			description: [
				"Target user password.",
			]
			type:     "str"
			required: true
		}
		port: {
			description: [
				"Target HTTPS port.",
			]
			type:    "int"
			default: 443
		}
		fact_subset: {
			description: [
				"C(basic_inventory) returns the list of the devices.",
				"C(detailed_inventory) returns the inventory details of specified devices.",
				"C(subsystem_health) returns the health status of specified devices.",
			]
			type: "str"
			choices: ["basic_inventory", "detailed_inventory", "subsystem_health"]
			default: "basic_inventory"
		}
		system_query_options: {
			description: [
				"I(system_query_options) applicable for the choices of the fact_subset. Either I(device_id) or I(device_service_tag) is mandatory for C(detailed_inventory) and C(subsystem_health) or both can be applicable.",
			]

			type: "dict"
			suboptions: {
				device_id: {
					description: [
						"A list of unique identifier is applicable for C(detailed_inventory) and C(subsystem_health).",
					]

					type: "list"
				}
				device_service_tag: {
					description: [
						"A list of service tags are applicable for C(detailed_inventory) and C(subsystem_health).",
					]

					type: "list"
				}
				inventory_type: {
					description: [
						"For C(detailed_inventory), it returns details of the specified inventory type.",
					]
					type: "str"
				}
				filter: {
					description: [
						"For C(basic_inventory), it filters the collection of devices. I(filter) query format should be aligned with OData standards.",
					]

					type: "str"
				}
			}
		}
	}

	requirements: [
		"python >= 2.7.5",
	]
	author: "Sajna Shetty(@Sajna-Shetty)"
}
