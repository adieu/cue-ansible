package ansible

module: azure_rm_postgresqlconfiguration_info: {
	module:            "azure_rm_postgresqlconfiguration_info"
	version_added:     "2.9"
	short_description: "Get Azure PostgreSQL Configuration facts"
	description: [
		"Get facts of Azure PostgreSQL Configuration.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group that contains the resource.",
			]
			required: true
			type:     "str"
		}
		server_name: {
			description: [
				"The name of the server.",
			]
			required: true
			type:     "str"
		}
		name: {
			description: [
				"Setting name.",
			]
			type: "str"
		}
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
