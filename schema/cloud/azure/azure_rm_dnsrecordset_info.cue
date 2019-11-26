package ansible

module: azure_rm_dnsrecordset_info: {
	module: "azure_rm_dnsrecordset_info"

	version_added: "2.9"

	short_description: "Get DNS Record Set facts"

	description: [
		"Get facts for a specific DNS Record Set in a Zone, or a specific type in all Zones or in one Zone etc.",
	]

	options: {
		relative_name: description: [
			"Only show results for a Record Set.",
		]
		resource_group: description: [
			"Limit results by resource group. Required when filtering by name or type.",
		]
		zone_name: description: [
			"Limit results by zones. Required when filtering by name or type.",
		]
		record_type: description: [
			"Limit record sets by record type.",
		]
		top: {
			description: [
				"Limit the maximum number of record sets to return.",
			]
			type: "int"
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Ozi Boms (@ozboms)",
	]
}
