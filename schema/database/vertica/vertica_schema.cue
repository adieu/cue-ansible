package ansible

module: vertica_schema: {
	module:            "vertica_schema"
	version_added:     "2.0"
	short_description: "Adds or removes Vertica database schema and roles."
	description: [
		"Adds or removes Vertica database schema and, optionally, roles with schema access privileges.",
		"A schema will not be removed until all the objects have been dropped.",
		"In such a situation, if the module tries to remove the schema it will fail and only remove roles created for the schema if they have no dependencies.",
	]

	options: {
		name: {
			description: [
				"Name of the schema to add or remove.",
			]
			required: true
		}
		usage_roles: {
			description: [
				"Comma separated list of roles to create and grant usage access to the schema.",
			]
			aliases: ["usage_role"]
		}
		create_roles: {
			description: [
				"Comma separated list of roles to create and grant usage and create access to the schema.",
			]
			aliases: ["create_role"]
		}
		owner: description: [
			"Name of the user to set as owner of the schema.",
		]
		state: {
			description: [
				"Whether to create C(present), or drop C(absent) a schema.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
		db: description: [
			"Name of the Vertica database.",
		]
		cluster: {
			description: [
				"Name of the Vertica cluster.",
			]
			default: "localhost"
		}
		port: {
			description: [
				"Vertica cluster port to connect to.",
			]
			default: 5433
		}
		login_user: {
			description: [
				"The username used to authenticate with.",
			]
			default: "dbadmin"
		}
		login_password: description: [
			"The password used to authenticate with.",
		]
	}
	notes: [
		"The default authentication assumes that you are either logging in as or sudo'ing to the C(dbadmin) account on the host.",
		"This module uses C(pyodbc), a Python ODBC database adapter. You must ensure that C(unixODBC) and C(pyodbc) is installed on the host and properly configured.",
		"Configuring C(unixODBC) for Vertica requires C(Driver = /opt/vertica/lib64/libverticaodbc.so) to be added to the C(Vertica) section of either C(/etc/odbcinst.ini) or C($HOME/.odbcinst.ini) and both C(ErrorMessagesPath = /opt/vertica/lib64) and C(DriverManagerEncoding = UTF-16) to be added to the C(Driver) section of either C(/etc/vertica.ini) or C($HOME/.vertica.ini).",
	]

	requirements: ["unixODBC", "pyodbc"]
	author: "Dariusz Owczarek (@dareko)"
}
