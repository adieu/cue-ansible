package ansible

module: postgresql_table: {
	module:            "postgresql_table"
	short_description: "Create, drop, or modify a PostgreSQL table"
	description: [
		"Allows to create, drop, rename, truncate a table, or change some table attributes.",
	]
	version_added: "2.8"
	options: {
		table: {
			description: [
				"Table name.",
			]
			required: true
			aliases: [
				"name",
			]
			type: "str"
		}
		state: {
			description: [
				"The table state. I(state=absent) is mutually exclusive with I(tablespace), I(owner), I(unlogged), I(like), I(including), I(columns), I(truncate), I(storage_params) and, I(rename).",
			]

			type:    "str"
			default: "present"
			choices: ["absent", "present"]
		}
		tablespace: {
			description: [
				"Set a tablespace for the table.",
			]
			required: false
			type:     "str"
		}
		owner: {
			description: [
				"Set a table owner.",
			]
			type: "str"
		}
		unlogged: {
			description: [
				"Create an unlogged table.",
			]
			type:    "bool"
			default: false
		}
		like: {
			description: [
				"Create a table like another table (with similar DDL). Mutually exclusive with I(columns), I(rename), and I(truncate).",
			]

			type: "str"
		}
		including: {
			description: [
				"Keywords that are used with like parameter, may be DEFAULTS, CONSTRAINTS, INDEXES, STORAGE, COMMENTS or ALL. Needs I(like) specified. Mutually exclusive with I(columns), I(rename), and I(truncate).",
			]

			type: "str"
		}
		columns: {
			description: [
				"Columns that are needed.",
			]
			type:     "list"
			elements: "str"
		}
		rename: {
			description: [
				"New table name. Mutually exclusive with I(tablespace), I(owner), I(unlogged), I(like), I(including), I(columns), I(truncate), and I(storage_params).",
			]

			type: "str"
		}
		truncate: {
			description: [
				"Truncate a table. Mutually exclusive with I(tablespace), I(owner), I(unlogged), I(like), I(including), I(columns), I(rename), and I(storage_params).",
			]

			type:    "bool"
			default: false
		}
		storage_params: {
			description: [
				"Storage parameters like fillfactor, autovacuum_vacuum_treshold, etc. Mutually exclusive with I(rename) and I(truncate).",
			]

			type:     "list"
			elements: "str"
		}
		db: {
			description: [
				"Name of database to connect and where the table will be created.",
			]
			type: "str"
			aliases: [
				"login_db",
			]
		}
		session_role: {
			description: [
				"Switch to session_role after connecting. The specified session_role must be a role that the current login_user is a member of.",
				"Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.",
			]

			type: "str"
		}
		cascade: {
			description: [
				"Automatically drop objects that depend on the table (such as views). Used with I(state=absent) only.",
			]

			type:          "bool"
			default:       false
			version_added: "2.9"
		}
	}
	notes: [
		"If you do not pass db parameter, tables will be created in the database named postgres.",
		"PostgreSQL allows to create columnless table, so columns param is optional.",
		"Unlogged tables are available from PostgreSQL server version 9.1.",
	]
	seealso: [{
		module: "postgresql_sequence"
	}, {
		module: "postgresql_idx"
	}, {
		module: "postgresql_info"
	}, {
		module: "postgresql_tablespace"
	}, {
		module: "postgresql_owner"
	}, {
		module: "postgresql_privs"
	}, {
		module: "postgresql_copy"
	}, {
		name:        "CREATE TABLE reference"
		description: "Complete reference of the CREATE TABLE command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-createtable.html"
	}, {
		name:        "ALTER TABLE reference"
		description: "Complete reference of the ALTER TABLE  command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-altertable.html"
	}, {
		name:        "DROP TABLE reference"
		description: "Complete reference of the DROP TABLE command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-droptable.html"
	}, {
		name:        "PostgreSQL data types"
		description: "Complete reference of the PostgreSQL data types documentation."
		link:        "postgresql.org/docs/current/datatype.html"
	}]
	author: [
		"Andrei Klychkov (@Andersson007)",
	]
	extends_documentation_fragment: "postgres"
}
