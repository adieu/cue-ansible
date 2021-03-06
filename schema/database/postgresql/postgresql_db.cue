package ansible

module: postgresql_db: {
	module:            "postgresql_db"
	short_description: "Add or remove PostgreSQL databases from a remote host."
	description: [
		"Add or remove PostgreSQL databases from a remote host.",
	]
	version_added: "0.6"
	options: {
		name: {
			description: [
				"Name of the database to add or remove",
			]
			type:     "str"
			required: true
			aliases: ["db"]
		}
		port: {
			description: [
				"Database port to connect (if needed)",
			]
			type:    "int"
			default: 5432
			aliases: [
				"login_port",
			]
		}
		owner: {
			description: [
				"Name of the role to set as owner of the database",
			]
			type: "str"
		}
		template: {
			description: [
				"Template used to create the database",
			]
			type: "str"
		}
		encoding: {
			description: [
				"Encoding of the database",
			]
			type: "str"
		}
		lc_collate: {
			description: [
				"Collation order (LC_COLLATE) to use in the database. Must match collation order of template database unless C(template0) is used as template.",
			]
			type: "str"
		}
		lc_ctype: {
			description: [
				"Character classification (LC_CTYPE) to use in the database (e.g. lower, upper, ...) Must match LC_CTYPE of template database unless C(template0) is used as template.",
			]

			type: "str"
		}
		session_role: {
			description: [
				"Switch to session_role after connecting. The specified session_role must be a role that the current login_user is a member of.",
				"Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.",
			]
			type:          "str"
			version_added: "2.8"
		}
		state: {
			description: [
				"The database state.",
				"C(present) implies that the database should be created if necessary.",
				"C(absent) implies that the database should be removed if present.",
				"C(dump) requires a target definition to which the database will be backed up. (Added in Ansible 2.4) Note that in some PostgreSQL versions of pg_dump, which is an embedded PostgreSQL utility and is used by the module, returns rc 0 even when errors occurred (e.g. the connection is forbidden by pg_hba.conf, etc.), so the module returns changed=True but the dump has not actually been done. Please, be sure that your version of pg_dump returns rc 1 in this case.",
				"C(restore) also requires a target definition from which the database will be restored. (Added in Ansible 2.4)",
				"The format of the backup will be detected based on the target name.",
				"Supported compression formats for dump and restore include C(.pgc), C(.bz2), C(.gz) and C(.xz)",
				"Supported formats for dump and restore include C(.sql) and C(.tar)",
			]
			type: "str"
			choices: ["absent", "dump", "present", "restore"]
			default: "present"
		}
		target: {
			description: [
				"File to back up or restore from.",
				"Used when I(state) is C(dump) or C(restore).",
			]
			type:          "path"
			version_added: "2.4"
		}
		target_opts: {
			description: [
				"Further arguments for pg_dump or pg_restore.",
				"Used when I(state) is C(dump) or C(restore).",
			]
			type:          "str"
			version_added: "2.4"
		}
		maintenance_db: {
			description: [
				"The value specifies the initial database (which is also called as maintenance DB) that Ansible connects to.",
			]
			type:          "str"
			default:       "postgres"
			version_added: "2.5"
		}
		conn_limit: {
			description: [
				"Specifies the database connection limit.",
			]
			type:          "str"
			version_added: "2.8"
		}
		tablespace: {
			description: [
				"The tablespace to set for the database U(https://www.postgresql.org/docs/current/sql-alterdatabase.html).",
				"If you want to move the database back to the default tablespace, explicitly set this to pg_default.",
			]

			type:          "path"
			version_added: "2.9"
		}
	}
	seealso: [{
		name:        "CREATE DATABASE reference"
		description: "Complete reference of the CREATE DATABASE command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-createdatabase.html"
	}, {
		name:        "DROP DATABASE reference"
		description: "Complete reference of the DROP DATABASE command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-dropdatabase.html"
	}, {
		name:        "pg_dump reference"
		description: "Complete reference of pg_dump documentation."
		link:        "https://www.postgresql.org/docs/current/app-pgdump.html"
	}, {
		name:        "pg_restore reference"
		description: "Complete reference of pg_restore documentation."
		link:        "https://www.postgresql.org/docs/current/app-pgrestore.html"
	}, {
		module: "postgresql_tablespace"
	}, {
		module: "postgresql_info"
	}, {
		module: "postgresql_ping"
	}]
	notes: [
		"State C(dump) and C(restore) don't require I(psycopg2) since version 2.8.",
	]
	author: "Ansible Core Team"
	extends_documentation_fragment: ["postgres"]
}
