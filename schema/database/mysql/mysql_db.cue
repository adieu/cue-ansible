package ansible

module: mysql_db: {
	module:            "mysql_db"
	short_description: "Add or remove MySQL databases from a remote host."
	description: [
		"Add or remove MySQL databases from a remote host.",
	]
	version_added: "0.6"
	options: {
		name: {
			description: [
				"name of the database to add or remove.",
				"I(name=all) May only be provided if I(state) is C(dump) or C(import).",
				"List of databases is provided with I(state=dump), I(state=present) and I(state=absent).",
				"if name=all Works like --all-databases option for mysqldump (Added in 2.0).",
			]
			required: true
			type:     "list"
			elements: "str"
			aliases: ["db"]
		}
		state: {
			description: [
				"The database state",
			]
			default: "present"
			choices: ["present", "absent", "dump", "import"]
		}
		collation: description: [
			"Collation mode (sorting). This only applies to new table/databases and does not update existing ones, this is a limitation of MySQL.",
		]
		encoding: description: [
			"Encoding mode to use, examples include C(utf8) or C(latin1_swedish_ci)",
		]
		target: description: [
			"Location, on the remote host, of the dump file to read from or write to. Uncompressed SQL files (C(.sql)) as well as bzip2 (C(.bz2)), gzip (C(.gz)) and xz (Added in 2.0) compressed files are supported.",
		]

		single_transaction: {
			description: [
				"Execute the dump in a single transaction",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.1"
		}
		quick: {
			description: [
				"Option used for dumping large tables",
			]
			type:          "bool"
			default:       "yes"
			version_added: "2.1"
		}
		ignore_tables: {
			description: [
				"A list of table names that will be ignored in the dump of the form database_name.table_name",
			]
			required: false
			default: []
			version_added: "2.7"
		}
		hex_blob: {
			description: [
				"Dump binary columns using hexadecimal notation",
			]
			required:      false
			default:       false
			type:          "bool"
			version_added: "2.10"
		}
	}
	author: "Ansible Core Team"
	requirements: [
		"mysql (command line binary)",
		"mysqldump (command line binary)",
	]
	notes: [
		"Requires the mysql and mysqldump binaries on the remote host.",
		"This module is B(not idempotent) when I(state) is C(import), and will import the dump file each time if run more than once.",
	]
	extends_documentation_fragment: "mysql"
}
