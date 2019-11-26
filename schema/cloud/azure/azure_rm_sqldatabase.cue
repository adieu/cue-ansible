package ansible

module: azure_rm_sqldatabase: {
	module:            "azure_rm_sqldatabase"
	version_added:     "2.5"
	short_description: "Manage SQL Database instance"
	description: [
		"Create, update and delete instance of SQL Database.",
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
				"The name of the database to be operated on (updated or created).",
			]
			required: true
		}
		location: description: [
			"Resource location. If not set, location from the resource group will be used as default.",
		]
		collation: description: [
			"The collation of the database. If not I(create_mode=default), this value is ignored.",
		]
		create_mode: {
			description: [
				"Specifies the mode of database creation.",
				"C(default), regular database creation.",
				"C(copy), creates a database as a copy of an existing database.",
				"C(online_secondary)/C(non_readable_secondary), creates a database as a (readable or nonreadable) secondary replica of an existing database.",
				"C(point_in_time_restore), Creates a database by restoring a point in time backup of an existing database.",
				"C(recovery), Creates a database by restoring a geo-replicated backup.",
				"C(restore), Creates a database by restoring a backup of a deleted database.",
				"C(restore_long_term_retention_backup), Creates a database by restoring from a long term retention vault.",
				"C(copy), C(non_readable_secondary), C(online_secondary) and C(restore_long_term_retention_backup) are not supported for C(data_warehouse) edition.",
			]
			choices: [
				"copy",
				"default",
				"non_readable_secondary",
				"online_secondary",
				"point_in_time_restore",
				"recovery",
				"restore",
				"restore_long_term_retention_backup",
			]
		}
		source_database_id: description: [
			"Required unless I(create_mode=default) or I(create_mode=restore_long_term_retention_backup).",
			"Specifies the resource ID of the source database.",
		]
		source_database_deletion_date: description: [
			"Required if I(create_mode=restore) and I(source_database_id) is the deleted database's original resource id when it existed (as opposed to its current restorable dropped database ID), then this value is required. Specifies the time that the database was deleted.",
		]

		restore_point_in_time: description: [
			"Required if I(create_mode=point_in_time_restore), this value is required. If I(create_mode=restore), this value is optional.",
			"Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database.",
			"Must be greater than or equal to the source database's earliestRestoreDate value.",
		]
		recovery_services_recovery_point_resource_id: description: [
			"Required if I(create_mode=restore_long_term_retention_backup), then this value is required.",
			"Specifies the resource ID of the recovery point to restore from.",
		]
		edition: {
			description: [
				"The edition of the database. The DatabaseEditions enumeration contains all the valid editions.",
				"If I(create_mode=non_readable_secondary) or I(create_mode=online_secondary), this value is ignored.",
				"To see possible values, query the capabilities API (/subscriptions/{subscriptionId}/providers/Microsoft.Sql/locations/{locationID}/capabilities) referred to by operationId:'Capabilities_ListByLocation'.",
			]

			choices: [
				"web",
				"business",
				"basic",
				"standard",
				"premium",
				"free",
				"stretch",
				"data_warehouse",
				"system",
				"system2",
			]
		}
		max_size_bytes: description: [
			"The max size of the database expressed in bytes.",
			"If not I(create_mode=default), this value is ignored.",
			"To see possible values, query the capabilities API (/subscriptions/{subscriptionId}/providers/Microsoft.Sql/locations/{locationID}/capabilities). referred to by operationId:'Capabilities_ListByLocation'.",
		]

		elastic_pool_name: description: [
			"The name of the elastic pool the database is in. Not supported for I(edition=data_warehouse).",
		]
		read_scale: {
			description: [
				"If the database is a geo-secondary, indicates whether read-only connections are allowed to this database or not.",
				"Not supported for I(edition=data_warehouse).",
			]
			type:    "bool"
			default: false
		}
		sample_name: {
			description: [
				"Indicates the name of the sample schema to apply when creating this database.",
				"If not I(create_mode=default), this value is ignored.",
				"Not supported for I(edition=data_warehouse).",
			]
			choices: [
				"adventure_works_lt",
			]
		}
		zone_redundant: {
			description: [
				"Is this database is zone redundant? It means the replicas of this database will be spread across multiple availability zones.",
			]
			type:    "bool"
			default: false
		}
		force_update: {
			description: [
				"SQL Database will be updated if given parameters differ from existing resource state.",
				"To force SQL Database update in any circumstances set this parameter to True.",
			]
			type: "bool"
		}
		state: {
			description: [
				"Assert the state of the SQL Database. Use C(present) to create or update an SQL Database and C(absent) to delete it.",
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
