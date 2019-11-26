package ansible

module: azure_rm_rediscachefirewallrule: {
	module:            "azure_rm_rediscachefirewallrule"
	version_added:     "2.8"
	short_description: "Manage Azure Cache for Redis Firewall rules"
	description: [
		"Create, update and delete Azure Cache for Redis Firewall rules.",
	]

	options: {
		resource_group: {
			description: [
				"Name of the resource group to which the resource belongs.",
			]
			required: true
		}
		cache_name: {
			description: [
				"Name of the Azure Cache for Redis.",
			]
			required: true
		}
		name: {
			description: [
				"Name of the Firewall rule.",
			]
			required: true
		}
		start_ip_address: description: [
			"The start IP address of the Azure Cache for Redis Firewall rule. Must be IPv4 format.",
			"Required when creating Firewall rule.",
		]
		end_ip_address: description: [
			"The end IP address of the Azure Cache for Redis Firewall rule. Must be IPv4 format.",
			"Required when creating Firewall rule.",
		]
		state: {
			description: [
				"Assert the state of the Firewall rule of Azure Cache for Redis.",
				"Use C(present) to create or update Firewall rule of Azure Cache for Redis and C(absent) to delete it.",
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
		"Yunge Zhu(@yungezz)",
	]
}
