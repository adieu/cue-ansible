package ansible

module: influxdb_database: {
	module:            "influxdb_database"
	short_description: "Manage InfluxDB databases"
	description: [
		"Manage InfluxDB databases.",
	]
	version_added: 2.1
	author:        "Kamil Szczygiel (@kamsz)"
	requirements: [
		"python >= 2.6",
		"influxdb >= 0.9 & <= 1.2.4",
		"requests",
	]
	options: {
		database_name: {
			description: [
				"Name of the database.",
			]
			required: true
		}
		state: {
			description: [
				"Determines if the database should be created or destroyed.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
	}
	extends_documentation_fragment: "influxdb"
}
