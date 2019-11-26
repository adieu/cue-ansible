package ansible

module: azure_rm_mysqlconfiguration: {
	module:            "azure_rm_mysqlconfiguration"
	version_added:     "2.8"
	short_description: "Manage Configuration instance"
	description: [
		"Create, update and delete instance of Configuration.",
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
				"The name of the server configuration.",
			]
			required: true
		}
		value: description: [
			"Value of the configuration.",
		]
		state: {
			description: [
				"Assert the state of the MySQL configuration. Use C(present) to update setting, or C(absent) to reset to default value.",
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
