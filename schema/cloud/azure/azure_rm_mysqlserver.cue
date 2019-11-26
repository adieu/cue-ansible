package ansible

module: azure_rm_mysqlserver: {
	module:            "azure_rm_mysqlserver"
	version_added:     "2.5"
	short_description: "Manage MySQL Server instance"
	description: [
		"Create, update and delete instance of MySQL Server.",
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
		sku: {
			description: [
				"The SKU (pricing tier) of the server.",
			]
			suboptions: {
				name: description: [
					"The name of the sku, typically, tier + family + cores, for example C(B_Gen4_1), C(GP_Gen5_8).",
				]
				tier: {
					description: [
						"The tier of the particular SKU, for example C(Basic).",
					]
					choices: [
						"basic",
						"standard",
					]
				}
				capacity: description: [
					"The scale up/out capacity, representing server's compute units.",
				]
				size: description: [
					"The size code, to be interpreted by resource as appropriate.",
				]
			}
		}
		location: description: [
			"Resource location. If not set, location from the resource group will be used as default.",
		]
		storage_mb: {
			description: [
				"The maximum storage allowed for a server.",
			]
			type: "int"
		}
		version: {
			description: [
				"Server version.",
			]
			choices: [
				5.6,
				5.7,
			]
		}
		enforce_ssl: {
			description: [
				"Enable SSL enforcement.",
			]
			type:    "bool"
			default: false
		}
		admin_username: description: [
			"The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).",
		]
		admin_password: description: [
			"The password of the administrator login.",
		]
		create_mode: {
			description: [
				"Create mode of SQL Server.",
			]
			default: "Default"
		}
		state: {
			description: [
				"Assert the state of the MySQL Server. Use C(present) to create or update a server and C(absent) to delete it.",
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
