package ansible

module: azure_rm_cosmosdbaccount: {
	module:            "azure_rm_cosmosdbaccount"
	version_added:     "2.8"
	short_description: "Manage Azure Database Account instance"
	description: [
		"Create, update and delete instance of Azure Database Account.",
	]

	options: {
		resource_group: {
			description: [
				"Name of an Azure resource group.",
			]
			required: true
		}
		name: {
			description: [
				"Cosmos DB database account name.",
			]
			required: true
		}
		location: description: [
			"The location of the resource group to which the resource belongs.",
			"Required when I(state=present).",
		]
		kind: {
			description: [
				"Indicates the type of database account. This can only be set at database account creation.",
			]
			choices: [
				"global_document_db",
				"mongo_db",
				"parse",
			]
		}
		consistency_policy: {
			description: [
				"The consistency policy for the Cosmos DB account.",
			]
			suboptions: {
				default_consistency_level: {
					description: [
						"The default consistency level and configuration settings of the Cosmos DB account.",
						"Required when I(state=present).",
					]
					choices: [
						"eventual",
						"session",
						"bounded_staleness",
						"strong",
						"consistent_prefix",
					]
				}
				max_staleness_prefix: {
					description: [
						"When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated.",
						"Accepted range for this value is 1 - 2,147,483,647. Required when I(default_consistency_policy=bounded_staleness).",
					]
					type: "int"
				}
				max_interval_in_seconds: {
					description: [
						"When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated.",
						"Accepted range for this value is 5 - 86400. Required when I(default_consistency_policy=bounded_staleness).",
					]
					type: "int"
				}
			}
		}
		geo_rep_locations: {
			description: [
				"An array that contains the georeplication locations enabled for the Cosmos DB account.",
				"Required when I(state=present).",
			]
			type: "list"
			suboptions: {
				name: description: [
					"The name of the region.",
				]
				failover_priority: {
					description: [
						"The failover priority of the region. A failover priority of 0 indicates a write region.",
						"The maximum value for a failover priority = (total number of regions - 1).",
						"Failover priority values must be unique for each of the regions in which the database account exists.",
					]
					type: "int"
				}
			}
		}
		database_account_offer_type: description: [
			"Database account offer type, for example I(Standard)",
			"Required when I(state=present).",
		]
		ip_range_filter: description: [
			"Cosmos DB Firewall support. This value specifies the set of IP addresses or IP address ranges.",
			"In CIDR form to be included as the allowed list of client IPs for a given database account.",
			"IP addresses/ranges must be comma separated and must not contain any spaces.",
		]
		is_virtual_network_filter_enabled: {
			description: [
				"Flag to indicate whether to enable/disable Virtual Network ACL rules.",
			]
			type: "bool"
		}
		enable_automatic_failover: {
			description: [
				"Enables automatic failover of the write region in the rare event that the region is unavailable due to an outage.",
				"Automatic failover will result in a new write region for the account and is chosen based on the failover priorities configured for the account.",
			]
			type: "bool"
		}
		enable_cassandra: {
			description: [
				"Enable Cassandra.",
			]
			type: "bool"
		}
		enable_table: {
			description: [
				"Enable Table.",
			]
			type: "bool"
		}
		enable_gremlin: {
			description: [
				"Enable Gremlin.",
			]
			type: "bool"
		}
		virtual_network_rules: {
			description: [
				"List of Virtual Network ACL rules configured for the Cosmos DB account.",
			]
			type: "list"
			suboptions: {
				subnet: description: [
					"It can be a string containing resource id of a subnet.",
					"It can be a dictionary containing 'resource_group', 'virtual_network_name' and 'subnet_name'",
				]
				ignore_missing_vnet_service_endpoint: {
					description: [
						"Create Cosmos DB account without existing virtual network service endpoint.",
					]
					type: "bool"
				}
			}
		}

		enable_multiple_write_locations: {
			description: [
				"Enables the account to write in multiple locations",
			]
			type: "bool"
		}
		state: {
			description: [
				"Assert the state of the Database Account.",
				"Use C(present) to create or update an Database Account and C(absent) to delete it.",
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
