package ansible

module: postgresql_set: {
	module:            "postgresql_set"
	short_description: "Change a PostgreSQL server configuration parameter"
	description: [
		"Allows to change a PostgreSQL server configuration parameter.",
		"The module uses ALTER SYSTEM command and applies changes by reload server configuration.",
		"ALTER SYSTEM is used for changing server configuration parameters across the entire database cluster.",
		"It can be more convenient and safe than the traditional method of manually editing the postgresql.conf file.",
		"ALTER SYSTEM writes the given parameter setting to the $PGDATA/postgresql.auto.conf file, which is read in addition to postgresql.conf.",
		"The module allows to reset parameter to boot_val (cluster initial value) by I(reset=yes) or remove parameter string from postgresql.auto.conf and reload I(value=default) (for settings with postmaster context restart is required).",
		"After change you can see in the ansible output the previous and the new parameter value and other information using returned values and M(debug) module.",
	]

	version_added: "2.8"
	options: {
		name: {
			description: [
				"Name of PostgreSQL server parameter.",
			]
			type:     "str"
			required: true
		}
		value: {
			description: [
				"Parameter value to set.",
				"To remove parameter string from postgresql.auto.conf and reload the server configuration you must pass I(value=default). With I(value=default) the playbook always returns changed is true.",
			]

			type:     "str"
			required: true
		}
		reset: {
			description: [
				"Restore parameter to initial state (boot_val). Mutually exclusive with I(value).",
			]
			type:    "bool"
			default: false
		}
		session_role: {
			description: [
				"Switch to session_role after connecting. The specified session_role must be a role that the current login_user is a member of.",
				"Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.",
			]

			type: "str"
		}
		db: {
			description: [
				"Name of database to connect.",
			]
			type: "str"
			aliases: [
				"login_db",
			]
		}
	}
	notes: [
		"Supported version of PostgreSQL is 9.4 and later.",
		"Pay attention, change setting with 'postmaster' context can return changed is true when actually nothing changes because the same value may be presented in several different form, for example, 1024MB, 1GB, etc. However in pg_settings system view it can be defined like 131072 number of 8kB pages. The final check of the parameter value cannot compare it because the server was not restarted and the value in pg_settings is not updated yet.",
		"For some parameters restart of PostgreSQL server is required. See official documentation U(https://www.postgresql.org/docs/current/view-pg-settings.html).",
	]

	seealso: [{
		module: "postgresql_info"
	}, {
		name:        "PostgreSQL server configuration"
		description: "General information about PostgreSQL server configuration."
		link:        "https://www.postgresql.org/docs/current/runtime-config.html"
	}, {
		name:        "PostgreSQL view pg_settings reference"
		description: "Complete reference of the pg_settings view documentation."
		link:        "https://www.postgresql.org/docs/current/view-pg-settings.html"
	}, {
		name:        "PostgreSQL ALTER SYSTEM command reference"
		description: "Complete reference of the ALTER SYSTEM command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-altersystem.html"
	}]
	author: [
		"Andrew Klychkov (@Andersson007)",
	]
	extends_documentation_fragment: "postgres"
}
