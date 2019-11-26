package ansible

module: postgresql_info: {
	module:            "postgresql_info"
	short_description: "Gather information about PostgreSQL servers"
	description: [
		"Gathers information about PostgreSQL servers.",
	]
	version_added: "2.8"
	options: {
		filter: {
			description: [
				"Limit the collected information by comma separated string or YAML list.",
				"Allowable values are C(version), C(databases), C(settings), C(tablespaces), C(roles), C(replications), C(repl_slots).",
				"By default, collects all subsets.",
				"You can use shell-style (fnmatch) wildcard to pass groups of values (see Examples).",
				"You can use '!' before value (for example, C(!settings)) to exclude it from the information.",
				"If you pass including and excluding values to the filter, for example, I(filter=!settings,ver), the excluding values will be ignored.",
			]

			type:     "list"
			elements: "str"
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
		session_role: {
			description: [
				"Switch to session_role after connecting. The specified session_role must be a role that the current login_user is a member of.",
				"Permissions checking for SQL commands is carried out as though the session_role were the one that had logged in originally.",
			]

			type: "str"
		}
	}
	seealso: [{
		module: "postgresql_ping"
	}]
	author: [
		"Andrew Klychkov (@Andersson007)",
	]
	extends_documentation_fragment: "postgres"
}
