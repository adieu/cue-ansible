package ansible

module: postgresql_idx: {
	module:            "postgresql_idx"
	short_description: "Create or drop indexes from a PostgreSQL database"
	description: [
		"Create or drop indexes from a PostgreSQL database.",
	]
	version_added: "2.8"

	options: {
		idxname: {
			description: [
				"Name of the index to create or drop.",
			]
			type:     "str"
			required: true
			aliases: [
				"name",
			]
		}
		db: {
			description: [
				"Name of database to connect to and where the index will be created/dropped.",
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
		schema: {
			description: [
				"Name of a database schema where the index will be created.",
			]
			type: "str"
		}
		state: {
			description: [
				"Index state.",
				"C(present) implies the index will be created if it does not exist.",
				"C(absent) implies the index will be dropped if it exists.",
				"C(stat) returns index statistics information from the ``pg_stat_user_indexes`` standard view. Supported from Ansible 2.10.",
				"When C(stat) following parameters will be ignored:",
				"I(schema), I(table), I(columns), I(cond), I(idxtype), I(tablespace), I(concurrent), I(cascade).",
			]
			type:    "str"
			default: "present"
			choices: ["absent", "present", "stat"]
		}
		table: {
			description: [
				"Table to create index on it.",
				"Mutually exclusive with I(state=absent).",
			]
			type:     "str"
			required: true
		}
		columns: {
			description: [
				"List of index columns that need to be covered by index.",
				"Mutually exclusive with I(state=absent).",
			]
			type:     "list"
			elements: "str"
			aliases: [
				"column",
			]
		}
		cond: {
			description: [
				"Index conditions.",
				"Mutually exclusive with I(state=absent).",
			]
			type: "str"
		}
		idxtype: {
			description: [
				"Index type (like btree, gist, gin, etc.).",
				"Mutually exclusive with I(state=absent).",
			]
			type: "str"
			aliases: [
				"type",
			]
		}
		concurrent: {
			description: [
				"Enable or disable concurrent mode (CREATE / DROP INDEX CONCURRENTLY).",
				"Pay attention, if I(concurrent=no), the table will be locked (ACCESS EXCLUSIVE) during the building process. For more information about the lock levels see U(https://www.postgresql.org/docs/current/explicit-locking.html).",
				"If the building process was interrupted for any reason when I(cuncurrent=yes), the index becomes invalid. In this case it should be dropped and created again.",
				"Mutually exclusive with I(cascade=yes).",
			]
			type:    "bool"
			default: true
		}
		tablespace: {
			description: [
				"Set a tablespace for the index.",
				"Mutually exclusive with I(state=absent).",
			]
			required: false
			type:     "str"
		}
		storage_params: {
			description: [
				"Storage parameters like fillfactor, vacuum_cleanup_index_scale_factor, etc.",
				"Mutually exclusive with I(state=absent).",
			]
			type:     "list"
			elements: "str"
		}
		cascade: {
			description: [
				"Automatically drop objects that depend on the index, and in turn all objects that depend on those objects.",
				"It used only with I(state=absent).",
				"Mutually exclusive with I(concurrent=yes)",
			]
			type:    "bool"
			default: false
		}
	}

	seealso: [{
		module: "postgresql_table"
	}, {
		module: "postgresql_tablespace"
	}, {
		name:        "PostgreSQL indexes reference"
		description: "General information about PostgreSQL indexes."
		link:        "https://www.postgresql.org/docs/current/indexes.html"
	}, {
		name:        "CREATE INDEX reference"
		description: "Complete reference of the CREATE INDEX command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-createindex.html"
	}, {
		name:        "ALTER INDEX reference"
		description: "Complete reference of the ALTER INDEX command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-alterindex.html"
	}, {
		name:        "DROP INDEX reference"
		description: "Complete reference of the DROP INDEX command documentation."
		link:        "https://www.postgresql.org/docs/current/sql-dropindex.html"
	}]

	notes: [
		"The index building process can affect database performance.",
		"To avoid table locks on production databases, use I(concurrent=yes) (default behavior).",
	]

	author: [
		"Andrew Klychkov (@Andersson007)",
	]

	extends_documentation_fragment: "postgres"
}
