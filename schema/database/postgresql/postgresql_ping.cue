package ansible

module: postgresql_ping: {
	module:            "postgresql_ping"
	short_description: "Check remote PostgreSQL server availability"
	description: [
		"Simple module to check remote PostgreSQL server availability.",
	]
	version_added: "2.8"
	options: db: {
		description: [
			"Name of a database to connect to.",
		]
		type: "str"
		aliases: [
			"login_db",
		]
	}
	seealso: [{
		module: "postgresql_info"
	}]
	author: [
		"Andrew Klychkov (@Andersson007)",
	]
	extends_documentation_fragment: "postgres"
}
