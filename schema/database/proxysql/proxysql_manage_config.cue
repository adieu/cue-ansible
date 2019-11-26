package ansible

module: proxysql_manage_config: {
	module:        "proxysql_manage_config"
	version_added: "2.3"

	author:            "Ben Mildren (@bmildren)"
	short_description: "Writes the proxysql configuration settings between layers."
	description: [
		"The M(proxysql_global_variables) module writes the proxysql configuration settings between layers. Currently this module will always report a changed state, so should typically be used with WHEN however this will change in a future version when the CHECKSUM table commands are available for all tables in proxysql.",
	]

	options: {
		action: {
			description: [
				"The supplied I(action) combines with the supplied I(direction) to provide the semantics of how we want to move the I(config_settings) between the I(config_layers).",
			]

			choices: ["LOAD", "SAVE"]
			required: true
		}
		config_settings: {
			description: [
				"The I(config_settings) specifies which configuration we're writing.",
			]
			choices: [
				"MYSQL USERS",
				"MYSQL SERVERS",
				"MYSQL QUERY RULES",
				"MYSQL VARIABLES",
				"ADMIN VARIABLES",
				"SCHEDULER",
			]
			required: true
		}
		direction: {
			description: [
				"FROM - denotes we're reading values FROM the supplied I(config_layer) and writing to the next layer. TO - denotes we're reading from the previous layer and writing TO the supplied I(config_layer).\"",
			]

			choices: ["FROM", "TO"]
			required: true
		}
		config_layer: {
			description: [
				"RUNTIME - represents the in-memory data structures of ProxySQL used by the threads that are handling the requests. MEMORY - (sometimes also referred as main) represents the in-memory SQLite3 database. DISK - represents the on-disk SQLite3 database. CONFIG - is the classical config file. You can only LOAD FROM the config file.",
			]

			choices: ["MEMORY", "DISK", "RUNTIME", "CONFIG"]
			required: true
		}
	}
	extends_documentation_fragment: ["proxysql.connectivity"]
}
