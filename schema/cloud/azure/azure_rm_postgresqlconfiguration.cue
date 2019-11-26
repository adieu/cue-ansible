package ansible

module: azure_rm_postgresqlconfiguration: {
	module:            "azure_rm_postgresqlconfiguration"
	version_added:     "2.8"
	short_description: "Manage Azure PostgreSQL Configuration"
	description: [
		"Update or reset Azure PostgreSQL Configuration setting.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group that contains the resource.",
			]
			required: true
		}
		server_name: {
			description: [
				"The name of the server.",
			]
			required: true
		}
		name: {
			description: [
				"Setting name.",
			]
			required: true
		}
		value: description: [
			"Setting value.",
		]
		state: {
			description: [
				"Assert the state of the PostgreSQL setting. Use C(present) to update setting, or C(absent) to reset to default value.",
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
		"Zim Kalinowski (@zikalino)",
	]
}
