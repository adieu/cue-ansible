package ansible

module: proxysql_mysql_users: {
	module:            "proxysql_mysql_users"
	version_added:     "2.3"
	author:            "Ben Mildren (@bmildren)"
	short_description: "Adds or removes mysql users from proxysql admin interface."
	description: [
		"The M(proxysql_mysql_users) module adds or removes mysql users using the proxysql admin interface.",
	]

	options: {
		username: {
			description: [
				"Name of the user connecting to the mysqld or ProxySQL instance.",
			]
			required: true
		}
		password: description: [
			"Password of the user connecting to the mysqld or ProxySQL instance.",
		]
		active: {
			description: [
				"A user with I(active) set to C(False) will be tracked in the database, but will be never loaded in the in-memory data structures. If omitted the proxysql database default for I(active) is C(True).",
			]

			type: "bool"
		}
		use_ssl: {
			description: [
				"If I(use_ssl) is set to C(True), connections by this user will be made using SSL connections. If omitted the proxysql database default for I(use_ssl) is C(False).",
			]

			type: "bool"
		}
		default_hostgroup: description: [
			"If there is no matching rule for the queries sent by this user, the traffic it generates is sent to the specified hostgroup. If omitted the proxysql database default for I(use_ssl) is 0.",
		]

		default_schema: description: [
			"The schema to which the connection should change to by default.",
		]
		transaction_persistent: {
			description: [
				"If this is set for the user with which the MySQL client is connecting to ProxySQL (thus a \"frontend\" user), transactions started within a hostgroup will remain within that hostgroup regardless of any other rules. If omitted the proxysql database default for I(transaction_persistent) is C(False).",
			]

			type: "bool"
		}
		fast_forward: {
			description: [
				"If I(fast_forward) is set to C(True), I(fast_forward) will bypass the query processing layer (rewriting, caching) and pass through the query directly as is to the backend server. If omitted the proxysql database default for I(fast_forward) is C(False).",
			]

			type: "bool"
		}
		backend: {
			description: [
				"If I(backend) is set to C(True), this (username, password) pair is used for authenticating to the ProxySQL instance.",
			]

			default: true
			type:    "bool"
		}
		frontend: {
			description: [
				"If I(frontend) is set to C(True), this (username, password) pair is used for authenticating to the mysqld servers against any hostgroup.",
			]

			default: true
			type:    "bool"
		}
		max_connections: description: [
			"The maximum number of connections ProxySQL will open to the backend for this user. If omitted the proxysql database default for I(max_connections) is 10000.",
		]

		state: {
			description: [
				"When C(present) - adds the user, when C(absent) - removes the user.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
	}
	extends_documentation_fragment: [
		"proxysql.managing_config",
		"proxysql.connectivity",
	]
}
