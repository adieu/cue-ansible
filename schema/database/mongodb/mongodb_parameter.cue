package ansible

module: mongodb_parameter: {
	module:            "mongodb_parameter"
	short_description: "Change an administrative parameter on a MongoDB server."
	description: [
		"Change an administrative parameter on a MongoDB server.",
	]
	version_added: "2.1"
	options: {
		login_user: description: [
			"The username used to authenticate with",
		]
		login_password: description: [
			"The password used to authenticate with",
		]
		login_host: {
			description: [
				"The host running the database",
			]
			default: "localhost"
		}
		login_port: {
			description: [
				"The port to connect to",
			]
			default: 27017
		}
		login_database: description: [
			"The database where login credentials are stored",
		]
		replica_set: description: [
			"Replica set to connect to (automatically connects to primary for writes)",
		]
		database: {
			description: [
				"The name of the database to add/remove the user from",
			]
			required: true
		}
		ssl: {
			description: [
				"Whether to use an SSL connection when connecting to the database",
			]
			type:    "bool"
			default: "no"
		}
		param: {
			description: [
				"MongoDB administrative parameter to modify",
			]
			required: true
		}
		value: {
			description: [
				"MongoDB administrative parameter value to set",
			]
			required: true
		}
		param_type: {
			description: [
				"Define the parameter value (str, int)",
			]
			default: "str"
		}
	}

	notes: [
		"Requires the pymongo Python package on the remote host, version 2.4.2+. This can be installed using pip or the OS package manager. @see http://api.mongodb.org/python/current/installation.html",
	]

	requirements: ["pymongo"]
	author: "Loic Blot (@nerzhul)"
}
