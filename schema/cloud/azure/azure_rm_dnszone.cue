package ansible

module: azure_rm_dnszone: {
	module: "azure_rm_dnszone"

	version_added: "2.4"

	short_description: "Manage Azure DNS zones"

	description: [
		"Creates and deletes Azure DNS zones.",
	]

	options: {
		resource_group: {
			description: [
				"name of resource group.",
			]
			required: true
		}
		name: {
			description: [
				"Name of the DNS zone.",
			]
			required: true
		}
		state: {
			description: [
				"Assert the state of the zone. Use C(present) to create or update and C(absent) to delete.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
		type: {
			description: [
				"The type of this DNS zone (C(public) or C(private)).",
			]
			choices: [
				"public",
				"private",
			]
			version_added: 2.8
		}
		registration_virtual_networks: {
			description: [
				"A list of references to virtual networks that register hostnames in this DNS zone.",
				"This is a only when I(type=private).",
				"Each element can be the name or resource id, or a dict contains C(name), C(resource_group) information of the virtual network.",
			]
			version_added: 2.8
			type:          "list"
		}
		resolution_virtual_networks: {
			description: [
				"A list of references to virtual networks that resolve records in this DNS zone.",
				"This is a only when I(type=private).",
				"Each element can be the name or resource id, or a dict contains C(name), C(resource_group) information of the virtual network.",
			]
			version_added: "2.8"
			type:          "list"
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: ["Obezimnaka Boms (@ozboms)"]
}
