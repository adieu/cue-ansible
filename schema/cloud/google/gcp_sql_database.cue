package ansible

module: gcp_sql_database: {
	module: "gcp_sql_database"
	description: [
		"Represents a SQL database inside the Cloud SQL instance, hosted in Google's cloud.",
	]
	short_description: "Creates a GCP Database"
	version_added:     "2.7"
	author:            "Google Inc. (@googlecloudplatform)"
	requirements: [
		"python >= 2.6",
		"requests >= 2.18.4",
		"google-auth >= 1.3.0",
	]
	options: {
		state: {
			description: [
				"Whether the given object should exist in GCP",
			]
			choices: [
				"present",
				"absent",
			]
			default: "present"
			type:    "str"
		}
		charset: {
			description: [
				"The charset value. See MySQL's [Supported Character Sets and Collations](U(https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)) and Postgres' [Character Set Support](U(https://www.postgresql.org/docs/9.6/static/multibyte.html)) for more details and supported values. Postgres databases only support a value of `UTF8` at creation time.",
			]

			required: false
			type:     "str"
		}
		collation: {
			description: [
				"The collation value. See MySQL's [Supported Character Sets and Collations](U(https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)) and Postgres' [Collation Support](U(https://www.postgresql.org/docs/9.6/static/collation.html)) for more details and supported values. Postgres databases only support a value of `en_US.UTF8` at creation time.",
			]

			required: false
			type:     "str"
		}
		name: {
			description: [
				"The name of the database in the Cloud SQL instance.",
				"This does not include the project ID or instance name.",
			]
			required: true
			type:     "str"
		}
		instance: {
			description: [
				"The name of the Cloud SQL instance. This does not include the project ID.",
			]
			required: true
			type:     "str"
		}
		project: {
			description: [
				"The Google Cloud Platform project to use.",
			]
			type: "str"
		}
		auth_kind: {
			description: [
				"The type of credential used.",
			]
			type:     "str"
			required: true
			choices: [
				"application",
				"machineaccount",
				"serviceaccount",
			]
		}
		service_account_contents: {
			description: [
				"The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.",
			]

			type: "jsonarg"
		}
		service_account_file: {
			description: [
				"The path of a Service Account JSON file if serviceaccount is selected as type.",
			]
			type: "path"
		}
		service_account_email: {
			description: [
				"An optional service account email address if machineaccount is selected and the user does not wish to use the default email.",
			]

			type: "str"
		}
		scopes: {
			description: [
				"Array of scopes to be used",
			]
			type: "list"
		}
		env_type: {
			description: [
				"Specifies which Ansible environment you're running this module within.",
				"This should not be set unless you know what you're doing.",
				"This only alters the User Agent string for any API requests.",
			]
			type: "str"
		}
	}
}
