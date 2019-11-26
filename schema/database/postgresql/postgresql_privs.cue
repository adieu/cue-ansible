package ansible

module: postgresql_privs: {
	module:            "postgresql_privs"
	version_added:     "1.2"
	short_description: "Grant or revoke privileges on PostgreSQL database objects"
	description: [
		"Grant or revoke privileges on PostgreSQL database objects.",
		"This module is basically a wrapper around most of the functionality of PostgreSQL's GRANT and REVOKE statements with detection of changes (GRANT/REVOKE I(privs) ON I(type) I(objs) TO/FROM I(roles)).",
	]

	options: {
		database: {
			description: [
				"Name of database to connect to.",
			]
			required: true
			type:     "str"
			aliases: [
				"db",
				"login_db",
			]
		}
		state: {
			description: [
				"If C(present), the specified privileges are granted, if C(absent) they are revoked.",
			]
			type:    "str"
			default: "present"
			choices: ["absent", "present"]
		}
		privs: {
			description: [
				"Comma separated list of privileges to grant/revoke.",
			]
			type: "str"
			aliases: [
				"priv",
			]
		}
		type: {
			description: [
				"Type of database object to set privileges on.",
				"The C(default_privs) choice is available starting at version 2.7.",
				"The C(foreign_data_wrapper) and C(foreign_server) object types are available from Ansible version '2.8'.",
				"The C(type) choice is available from Ansible version '2.10'.",
			]
			type:    "str"
			default: "table"
			choices: [
				"database",
				"default_privs",
				"foreign_data_wrapper",
				"foreign_server",
				"function",
				"group",
				"language",
				"table",
				"tablespace",
				"schema",
				"sequence",
				"type",
			]
		}
		objs: {
			description: [
				"Comma separated list of database objects to set privileges on.",
				"If I(type) is C(table), C(partition table), C(sequence) or C(function), the special valueC(ALL_IN_SCHEMA) can be provided instead to specify all database objects of type I(type) in the schema specified via I(schema). (This also works with PostgreSQL < 9.0.) (C(ALL_IN_SCHEMA) is available for C(function) and C(partition table) from version 2.8)",
				"If I(type) is C(database), this parameter can be omitted, in which case privileges are set for the database specified via I(database).",
				"If I(type) is I(function), colons (\":\") in object names will be replaced with commas (needed to specify function signatures, see examples)",
			]

			type: "str"
			aliases: [
				"obj",
			]
		}
		schema: {
			description: [
				"Schema that contains the database objects specified via I(objs).",
				"May only be provided if I(type) is C(table), C(sequence), C(function), C(type), or C(default_privs). Defaults to C(public) in these cases.",
				"Pay attention, for embedded types when I(type=type) I(schema) can be C(pg_catalog) or C(information_schema) respectively.",
			]

			type: "str"
		}
		roles: {
			description: [
				"Comma separated list of role (user/group) names to set permissions for.",
				"The special value C(PUBLIC) can be provided instead to set permissions for the implicitly defined PUBLIC group.",
			]

			type:     "str"
			required: true
			aliases: [
				"role",
			]
		}
		fail_on_role: {
			version_added: "2.8"
			description: [
				"If C(yes), fail when target role (for whom privs need to be granted) does not exist. Otherwise just warn and continue.",
			]

			default: true
			type:    "bool"
		}
		session_role: {
			version_added: "2.8"
			description: [
				"Switch to session_role after connecting.",
				"The specified session_role must be a role that the current login_user is a member of.",
				"Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.",
			]
			type: "str"
		}
		target_roles: {
			description: [
				"A list of existing role (user/group) names to set as the default permissions for database objects subsequently created by them.",
				"Parameter I(target_roles) is only available with C(type=default_privs).",
			]
			type:          "str"
			version_added: "2.8"
		}
		grant_option: {
			description: [
				"Whether C(role) may grant/revoke the specified privileges/group memberships to others.",
				"Set to C(no) to revoke GRANT OPTION, leave unspecified to make no changes.",
				"I(grant_option) only has an effect if I(state) is C(present).",
			]
			type: "bool"
			aliases: [
				"admin_option",
			]
		}
		host: {
			description: [
				"Database host address. If unspecified, connect via Unix socket.",
			]
			type: "str"
			aliases: [
				"login_host",
			]
		}
		port: {
			description: [
				"Database port to connect to.",
			]
			type:    "int"
			default: 5432
			aliases: [
				"login_port",
			]
		}
		unix_socket: {
			description: [
				"Path to a Unix domain socket for local connections.",
			]
			type: "str"
			aliases: [
				"login_unix_socket",
			]
		}
		login: {
			description: [
				"The username to authenticate with.",
			]
			type:    "str"
			default: "postgres"
			aliases: [
				"login_user",
			]
		}
		password: {
			description: [
				"The password to authenticate with.",
			]
			type: "str"
			aliases: [
				"login_password",
			]
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
			version_added: "2.3"
		}
		ca_cert: {
			description: [
				"Specifies the name of a file containing SSL certificate authority (CA) certificate(s).",
				"If the file exists, the server's certificate will be verified to be signed by one of these authorities.",
			]
			version_added: "2.3"
			type:          "str"
			aliases: [
				"ssl_rootcert",
			]
		}
	}

	notes: [
		"Parameters that accept comma separated lists (I(privs), I(objs), I(roles)) have singular alias names (I(priv), I(obj), I(role)).",
		"To revoke only C(GRANT OPTION) for a specific object, set I(state) to C(present) and I(grant_option) to C(no) (see examples).",
		"Note that when revoking privileges from a role R, this role  may still have access via privileges granted to any role R is a member of including C(PUBLIC).",
		"Note that when revoking privileges from a role R, you do so as the user specified via I(login). If R has been granted the same privileges by another user also, R can still access database objects via these privileges.",
		"When revoking privileges, C(RESTRICT) is assumed (see PostgreSQL docs).",
	]

	seealso: [{
		module: "postgresql_user"
	}, {
		module: "postgresql_owner"
	}, {
		module: "postgresql_membership"
	}, {
		name:        "PostgreSQL privileges"
		description: "General information about PostgreSQL privileges."
		link:        "https://www.postgresql.org/docs/current/ddl-priv.html"
	}, {
		name:        "PostgreSQL GRANT command reference"
		description: "Complete reference of the PostgreSQL GRANT command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-grant.html"
	}, {
		name:        "PostgreSQL REVOKE command reference"
		description: "Complete reference of the PostgreSQL REVOKE command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-revoke.html"
	}]

	extends_documentation_fragment: [
		"postgres",
	]

	author: [
		"Bernhard Weitzhofer (@b6d)",
		"Tobias Birkefeld (@tcraxs)",
	]
}
