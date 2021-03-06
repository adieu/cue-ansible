package ansible

module: proxysql_backend_servers: {
	module:            "proxysql_backend_servers"
	version_added:     "2.3"
	author:            "Ben Mildren (@bmildren)"
	short_description: "Adds or removes mysql hosts from proxysql admin interface."
	description: [
		"The M(proxysql_backend_servers) module adds or removes mysql hosts using the proxysql admin interface.",
	]

	options: {
		hostgroup_id: {
			description: [
				"The hostgroup in which this mysqld instance is included. An instance can be part of one or more hostgroups.",
			]

			default: 0
		}
		hostname: {
			description: [
				"The ip address at which the mysqld instance can be contacted.",
			]
			required: true
		}
		port: {
			description: [
				"The port at which the mysqld instance can be contacted.",
			]
			default: 3306
		}
		status: {
			description: [
				"""
		ONLINE - Backend server is fully operational. OFFLINE_SOFT - When a server is put into C(OFFLINE_SOFT) mode, connections are kept in use until the current transaction is completed. This allows to gracefully detach a backend. OFFLINE_HARD - When a server is put into C(OFFLINE_HARD) mode, the existing connections are dropped, while new incoming connections aren't accepted either.
		If omitted the proxysql database default for I(status) is C(ONLINE).
		""",
			]

			choices: ["ONLINE", "OFFLINE_SOFT", "OFFLINE_HARD"]
		}
		weight: description: [
			"The bigger the weight of a server relative to other weights, the higher the probability of the server being chosen from the hostgroup. If omitted the proxysql database default for I(weight) is 1.",
		]

		compression: description: [
			"If the value of I(compression) is greater than 0, new connections to that server will use compression. If omitted the proxysql database default for I(compression) is 0.",
		]

		max_connections: description: [
			"The maximum number of connections ProxySQL will open to this backend server. If omitted the proxysql database default for I(max_connections) is 1000.",
		]

		max_replication_lag: description: [
			"If greater than 0, ProxySQL will regularly monitor replication lag. If replication lag goes above I(max_replication_lag), proxysql will temporarily shun the server until replication catches up. If omitted the proxysql database default for I(max_replication_lag) is 0.",
		]

		use_ssl: {
			description: [
				"If I(use_ssl) is set to C(True), connections to this server will be made using SSL connections. If omitted the proxysql database default for I(use_ssl) is C(False).",
			]

			type: "bool"
		}
		max_latency_ms: description: [
			"Ping time is monitored regularly. If a host has a ping time greater than I(max_latency_ms) it is excluded from the connection pool (although the server stays ONLINE). If omitted the proxysql database default for I(max_latency_ms) is 0.",
		]

		comment: {
			description: [
				"Text field that can be used for any purposed defined by the user. Could be a description of what the host stores, a reminder of when the host was added or disabled, or a JSON processed by some checker script.",
			]

			default: ""
		}
		state: {
			description: [
				"When C(present) - adds the host, when C(absent) - removes the host.",
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
