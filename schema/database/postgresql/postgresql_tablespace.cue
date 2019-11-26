package ansible

module: postgresql_tablespace: {
	module:            "postgresql_tablespace"
	short_description: "Add or remove PostgreSQL tablespaces from remote hosts"
	description: [
		"Adds or removes PostgreSQL tablespaces from remote hosts.",
	]
	version_added: "2.8"
	options: {
		tablespace: {
			description: [
				"Name of the tablespace to add or remove.",
			]
			required: true
			type:     "str"
			aliases: [
				"name",
			]
		}
		location: {
			description: [
				"Path to the tablespace directory in the file system.",
				"Ensure that the location exists and has right privileges.",
			]
			type: "path"
			aliases: [
				"path",
			]
		}
		state: {
			description: [
				"Tablespace state.",
				"I(state=present) implies the tablespace must be created if it doesn't exist.",
				"I(state=absent) implies the tablespace must be removed if present. I(state=absent) is mutually exclusive with I(location), I(owner), i(set).",
				"See the Notes section for information about check mode restrictions.",
			]
			type:    "str"
			default: "present"
			choices: ["absent", "present"]
		}
		owner: {
			description: [
				"Name of the role to set as an owner of the tablespace.",
				"If this option is not specified, the tablespace owner is a role that creates the tablespace.",
			]
			type: "str"
		}
		set: {
			description: [
				"Dict of tablespace options to set. Supported from PostgreSQL 9.0.",
				"For more information see U(https://www.postgresql.org/docs/current/sql-createtablespace.html).",
				"When reset is passed as an option's value, if the option was set previously, it will be removed.",
			]
			type: "dict"
		}
		rename_to: description: [
			"New name of the tablespace.",
			"The new name cannot begin with pg_, as such names are reserved for system tablespaces.",
		]
		session_role: {
			description: [
				"Switch to session_role after connecting. The specified session_role must be a role that the current login_user is a member of.",
				"Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.",
			]

			type: "str"
		}
		db: {
			description: [
				"Name of database to connect to and run queries against.",
			]
			type: "str"
			aliases: [
				"login_db",
			]
		}
	}

	notes: [
		"I(state=absent) and I(state=present) (the second one if the tablespace doesn't exist) do not support check mode because the corresponding PostgreSQL DROP and CREATE TABLESPACE commands can not be run inside the transaction block.",
	]

	seealso: [{
		name:        "PostgreSQL tablespaces"
		description: "General information about PostgreSQL tablespaces."
		link:        "https://www.postgresql.org/docs/current/manage-ag-tablespaces.html"
	}, {
		name:        "CREATE TABLESPACE reference"
		description: "Complete reference of the CREATE TABLESPACE command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-createtablespace.html"
	}, {
		name:        "ALTER TABLESPACE reference"
		description: "Complete reference of the ALTER TABLESPACE command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-altertablespace.html"
	}, {
		name:        "DROP TABLESPACE reference"
		description: "Complete reference of the DROP TABLESPACE command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-droptablespace.html"
	}]

	author: [
		"Flavien Chantelot (@Dorn-)",
		"Antoine Levy-Lambert (@antoinell)",
		"Andrew Klychkov (@Andersson007)",
	]

	extends_documentation_fragment: "postgres"
}
