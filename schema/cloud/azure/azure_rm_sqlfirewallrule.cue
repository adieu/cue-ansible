package ansible

module: azure_rm_sqlfirewallrule: {
	module:            "azure_rm_sqlfirewallrule"
	version_added:     "2.7"
	short_description: "Manage Firewall Rule instance"
	description: [
		"Create, update and delete instance of Firewall Rule.",
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
				"The name of the firewall rule.",
			]
			required: true
		}
		start_ip_address: description: [
			"The start IP address of the firewall rule.",
			"Must be IPv4 format. Use value C(0.0.0.0) to represent all Azure-internal IP addresses.",
		]
		end_ip_address: description: [
			"The end IP address of the firewall rule.",
			"Must be IPv4 format. Must be greater than or equal to I(start_ip_address). Use value C(0.0.0.0) to represent all Azure-internal IP addresses.",
		]
		state: {
			description: [
				"State of the SQL Database. Use C(present) to create or update an SQL Database and C(absent) to delete it.",
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
