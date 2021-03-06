package ansible

module: influxdb_user: {
	module:            "influxdb_user"
	short_description: "Manage InfluxDB users"
	description: [
		"Manage InfluxDB users",
	]
	version_added: 2.5
	author:        "Vitaliy Zhhuta (@zhhuta)"
	requirements: [
		"python >= 2.6",
		"influxdb >= 0.9",
	]
	options: {
		user_name: {
			description: [
				"Name of the user.",
			]
			required: true
		}
		user_password: {
			description: [
				"Password to be set for the user.",
			]
			required: false
		}
		admin: {
			description: [
				"Whether the user should be in the admin role or not.",
				"Since version 2.8, the role will also be updated.",
			]
			default: false
			type:    "bool"
		}
		state: {
			description: [
				"State of the user.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		grants: {
			description: [
				"Privileges to grant to this user. Takes a list of dicts containing the \"database\" and \"privilege\" keys.",
				"If this argument is not provided, the current grants will be left alone. If an empty list is provided, all grants for the user will be removed.",
			]

			version_added: 2.8
		}
	}
	extends_documentation_fragment: "influxdb"
}
