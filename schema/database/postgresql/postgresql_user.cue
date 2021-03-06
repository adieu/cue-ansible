package ansible

module: postgresql_user: {
	module:            "postgresql_user"
	short_description: "Add or remove a user (role) from a PostgreSQL server instance"
	description: [
		"Adds or removes a user (role) from a PostgreSQL server instance (\"cluster\" in PostgreSQL terminology) and, optionally, grants the user access to an existing database or tables.",
		"A user is a role with login privilege.",
		"The fundamental function of the module is to create, or delete, users from a PostgreSQL instances. Privilege assignment, or removal, is an optional step, which works on one database at a time. This allows for the module to be called several times in the same module to modify the permissions on different databases, or to grant permissions to already existing users.",
		"A user cannot be removed until all the privileges have been stripped from the user. In such situation, if the module tries to remove the user it will fail. To avoid this from happening the fail_on_user option signals the module to try to remove the user, but if not possible keep going; the module will report if changes happened and separately if the user was removed or not.",
	]

	version_added: "0.6"
	options: {
		name: {
			description: [
				"Name of the user (role) to add or remove.",
			]
			type:     "str"
			required: true
			aliases: [
				"user",
			]
		}
		password: {
			description: [
				"Set the user's password, before 1.4 this was required.",
				"Password can be passed unhashed or hashed (MD5-hashed).",
				"Unhashed password will automatically be hashed when saved into the database if C(encrypted) parameter is set, otherwise it will be save in plain text format.",
				"When passing a hashed password it must be generated with the format C('str[\"md5\"] + md5[ password + username ]'), resulting in a total of 35 characters. An easy way to do this is C(echo \"md5$(echo -n 'verysecretpasswordJOE' | md5sum | awk '{print $1}')\").",
				"Note that if the provided password string is already in MD5-hashed format, then it is used as-is, regardless of C(encrypted) parameter.",
			]

			type: "str"
		}
		db: {
			description: [
				"Name of database to connect to and where user's permissions will be granted.",
			]
			type: "str"
			aliases: [
				"login_db",
			]
		}
		fail_on_user: {
			description: [
				"If C(yes), fail when user (role) can't be removed. Otherwise just log and continue.",
			]
			default: "yes"
			type:    "bool"
			aliases: [
				"fail_on_role",
			]
		}
		priv: {
			description: [
				"Slash-separated PostgreSQL privileges string: C(priv1/priv2), where privileges can be defined for database ( allowed options - 'CREATE', 'CONNECT', 'TEMPORARY', 'TEMP', 'ALL'. For example C(CONNECT) ) or for table ( allowed options - 'SELECT', 'INSERT', 'UPDATE', 'DELETE', 'TRUNCATE', 'REFERENCES', 'TRIGGER', 'ALL'. For example C(table:SELECT) ). Mixed example of this string: C(CONNECT/CREATE/table1:SELECT/table2:INSERT).",
			]

			type: "str"
		}
		role_attr_flags: {
			description: [
				"PostgreSQL user attributes string in the format: CREATEDB,CREATEROLE,SUPERUSER.",
				"Note that '[NO]CREATEUSER' is deprecated.",
				"To create a simple role for using it like a group, use C(NOLOGIN) flag.",
			]
			type: "str"
			choices: [
				"[NO]SUPERUSER",
				"[NO]CREATEROLE",
				"[NO]CREATEDB",
				"[NO]INHERIT",
				"[NO]LOGIN",
				"[NO]REPLICATION",
				"[NO]BYPASSRLS",
			]
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
		state: {
			description: [
				"The user (role) state.",
			]
			type:    "str"
			default: "present"
			choices: ["absent", "present"]
		}
		encrypted: {
			description: [
				"Whether the password is stored hashed in the database.",
				"Passwords can be passed already hashed or unhashed, and postgresql ensures the stored password is hashed when C(encrypted) is set.",
				"Note: Postgresql 10 and newer doesn't support unhashed passwords.",
				"Previous to Ansible 2.6, this was C(no) by default.",
			]
			default:       "yes"
			type:          "bool"
			version_added: "1.4"
		}
		expires: {
			description: [
				"The date at which the user's password is to expire.",
				"If set to C('infinity'), user's password never expire.",
				"Note that this value should be a valid SQL date and time type.",
			]
			type:          "str"
			version_added: "1.4"
		}
		no_password_changes: {
			description: [
				"If C(yes), don't inspect database for password changes. Effective when C(pg_authid) is not accessible (such as AWS RDS). Otherwise, make password changes as necessary.",
			]

			default:       "no"
			type:          "bool"
			version_added: "2.0"
		}
		conn_limit: {
			description: [
				"Specifies the user (role) connection limit.",
			]
			type:          "int"
			version_added: "2.4"
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
			type: "str"
			aliases: ["ssl_rootcert"]
			version_added: "2.3"
		}
		groups: {
			description: [
				"The list of groups (roles) that need to be granted to the user.",
			]
			type:          "list"
			elements:      "str"
			version_added: "2.9"
		}
	}
	notes: [
		"The module creates a user (role) with login privilege by default. Use NOLOGIN role_attr_flags to change this behaviour.",
		"If you specify PUBLIC as the user (role), then the privilege changes will apply to all users (roles). You may not specify password or role_attr_flags when the PUBLIC user is specified.",
	]

	seealso: [{
		module: "postgresql_privs"
	}, {
		module: "postgresql_membership"
	}, {
		module: "postgresql_owner"
	}, {
		name:        "PostgreSQL database roles"
		description: "Complete reference of the PostgreSQL database roles documentation."
		link:        "https://www.postgresql.org/docs/current/user-manag.html"
	}]
	author: [
		"Ansible Core Team",
	]
	extends_documentation_fragment: "postgres"
}
