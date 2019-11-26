package ansible

module: rax_cdb_user: {
	module:            "rax_cdb_user"
	short_description: "create / delete a Rackspace Cloud Database"
	description: [
		"create / delete a database in the Cloud Databases.",
	]
	version_added: "1.8"
	options: {
		cdb_id: description: [
			"The databases server UUID",
		]
		db_username: description: [
			"Name of the database user",
		]
		db_password: description: [
			"Database user password",
		]
		databases: {
			description: [
				"Name of the databases that the user can access",
			]
			default: []
		}
		host: {
			description: [
				"Specifies the host from which a user is allowed to connect to the database. Possible values are a string containing an IPv4 address or \"%\" to allow connecting from any host",
			]

			default: "%"
		}
		state: {
			description: [
				"Indicate desired state of the resource",
			]
			choices: ["present", "absent"]
			default: "present"
		}
	}
	author: "Simon JAILLET (@jails)"
	extends_documentation_fragment: [
		"rackspace",
		"rackspace.openstack",
	]
}
