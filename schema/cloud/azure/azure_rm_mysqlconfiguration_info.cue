package ansible

module: azure_rm_mysqlconfiguration_info: {
	module:            "azure_rm_mysqlconfiguration_info"
	version_added:     "2.9"
	short_description: "Get Azure MySQL Configuration facts"
	description: [
		"Get facts of Azure MySQL Configuration.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.",
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
