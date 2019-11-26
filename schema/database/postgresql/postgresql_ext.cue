package ansible

module: postgresql_ext: {
	module:            "postgresql_ext"
	short_description: "Add or remove PostgreSQL extensions from a database"
	description: [
		"Add or remove PostgreSQL extensions from a database.",
	]
	version_added: "1.9"
	options: {
		name: {
			description: [
				"Name of the extension to add or remove.",
			]
			required: true
			type:     "str"
			aliases: [
				"ext",
			]
		}
		db: {
			description: [
				"Name of the database to add or remove the extension to/from.",
			]
			required: true
			type:     "str"
			aliases: [
				"login_db",
			]
		}
		schema: {
			description: [
				"Name of the schema to add the extension to.",
			]
			version_added: "2.8"
			type:          "str"
		}
		session_role: {
			description: [
				"Switch to session_role after connecting.",
				"The specified session_role must be a role that the current login_user is a member of.",
				"Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.",
			]
			type:          "str"
			version_added: "2.8"
		}
		state: {
			description: [
				"The database extension state.",
			]
			default: "present"
			choices: ["absent", "present"]
			type: "str"
		}
		cascade: {
			description: [
				"Automatically install/remove any extensions that this extension depends on that are not already installed/removed (supported since PostgreSQL 9.6).",
			]

			type:          "bool"
			default:       false
			version_added: "2.8"
		}
		login_unix_socket: {
			description: [
				"Path to a Unix domain socket for local connections.",
			]
			type:          "str"
			version_added: "2.8"
		}
		ssl_mode: {
			description: [
				"Determines whether or with what priority a secure SSL TCP/IP connection will be negotiated with the server.",
				"See https://www.postgresql.org/docs/current/static/libpq-ssl.html for more information on the modes.",
				"Default of C(prefer) matches libpq default.",
			]
			type:    "str"
			default: "prefer"
			choices: ["allow", "disable", "prefer", "require", "verify-ca", "verify-full"]
			version_added: "2.8"
		}
		ca_cert: {
			description: [
				"Specifies the name of a file containing SSL certificate authority (CA) certificate(s).",
				"If the file exists, the server's certificate will be verified to be signed by one of these authorities.",
			]
			type: "str"
			aliases: ["ssl_rootcert"]
			version_added: "2.8"
		}
		version: {
			description: [
				"Extension version to add or update to. Has effect with I(state=present) only.",
				"If not specified, the latest extension version will be created.",
				"It can't downgrade an extension version. When version downgrade is needed, remove the extension and create new one with appropriate version.",
				"Set I(version=latest) to update the extension to the latest available version.",
			]
			type:          "str"
			version_added: "2.9"
		}
	}
	seealso: [{
		name:        "PostgreSQL extensions"
		description: "General information about PostgreSQL extensions."
		link:        "https://www.postgresql.org/docs/current/external-extensions.html"
	}, {
		name:        "CREATE EXTENSION reference"
		description: "Complete reference of the CREATE EXTENSION command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-createextension.html"
	}, {
		name:        "ALTER EXTENSION reference"
		description: "Complete reference of the ALTER EXTENSION command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-alterextension.html"
	}, {
		name:        "DROP EXTENSION reference"
		description: "Complete reference of the DROP EXTENSION command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-droppublication.html"
	}]
	notes: [
		"The default authentication assumes that you are either logging in as or sudo'ing to the C(postgres) account on the host.",
		"This module uses I(psycopg2), a Python PostgreSQL database adapter.",
		"You must ensure that psycopg2 is installed on the host before using this module.",
		"If the remote host is the PostgreSQL server (which is the default case), then PostgreSQL must also be installed on the remote host.",
		"For Ubuntu-based systems, install the C(postgresql), C(libpq-dev), and C(python-psycopg2) packages on the remote host before using this module.",
	]

	requirements: ["psycopg2"]
	author: [
		"Daniel Schep (@dschep)",
		"Thomas O'Donnell (@andytom)",
		"Sandro Santilli (@strk)",
		"Andrew Klychkov (@Andersson007)",
	]
	extends_documentation_fragment: "postgres"
}
