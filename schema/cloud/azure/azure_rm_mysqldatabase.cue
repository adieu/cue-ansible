package ansible

module: azure_rm_mysqldatabase: {
	module:            "azure_rm_mysqldatabase"
	version_added:     "2.5"
	short_description: "Manage MySQL Database instance"
	description: [
		"Create, update and delete instance of MySQL Database.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.",
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
				"The name of the database.",
			]
			required: true
		}
		charset: description: [
			"The charset of the database. Check MySQL documentation for possible values.",
			"This is only set on creation, use I(force_update) to recreate a database if the values don't match.",
		]
		collation: description: [
			"The collation of the database. Check MySQL documentation for possible values.",
			"This is only set on creation, use I(force_update) to recreate a database if the values don't match.",
		]
		force_update: {
			description: [
				"When set to C(true), will delete and recreate the existing MySQL database if any of the properties don't match what is set.",
				"When set to C(false), no change will occur to the database even if any of the properties do not match.",
			]
			type:    "bool"
			default: "no"
		}
		state: {
			description: [
				"Assert the state of the MySQL Database. Use C(present) to create or update a database and C(absent) to delete it.",
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
