package ansible

module: azure_rm_mariadbfirewallrule: {
	module:            "azure_rm_mariadbfirewallrule"
	version_added:     "2.8"
	short_description: "Manage MariaDB firewall rule instance"
	description: [
		"Create, update and delete instance of MariaDB firewall rule.",
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
				"The name of the MariaDB firewall rule.",
			]
			required: true
		}
		start_ip_address: description: [
			"The start IP address of the MariaDB firewall rule. Must be IPv4 format.",
		]
		end_ip_address: description: [
			"The end IP address of the MariaDB firewall rule. Must be IPv4 format.",
		]
		state: {
			description: [
				"Assert the state of the MariaDB firewall rule. Use C(present) to create or update a rule and C(absent) to ensure it is not present.",
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
		"Matti Ranta (@techknowlogick)",
	]
}
