package ansible

module: azure_rm_sqlserver: {
	module:            "azure_rm_sqlserver"
	version_added:     "2.5"
	short_description: "Manage SQL Server instance"
	description: [
		"Create, update and delete instance of SQL Server.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.",
			]
			required: true
		}
		name: {
			description: [
				"The name of the server.",
			]
			required: true
		}
		location: description: [
			"Resource location.",
		]
		admin_username: description: [
			"Administrator username for the server. Once created it cannot be changed.",
		]
		admin_password: description: [
			"The administrator login password (required for server creation).",
		]
		version: description: [
			"The version of the server. For example C(12.0).",
		]
		identity: description: [
			"The identity type. Set this to C(SystemAssigned) in order to automatically create and assign an Azure Active Directory principal for the resource.",
			"Possible values include C(SystemAssigned).",
		]
		state: {
			description: [
				"State of the SQL server. Use C(present) to create or update a server and use C(absent) to delete a server.",
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
		"azure_tags",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
