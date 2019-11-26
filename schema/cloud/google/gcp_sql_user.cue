package ansible

module: gcp_sql_user: {
	module: "gcp_sql_user"
	description: [
		"The Users resource represents a database user in a Cloud SQL instance.",
	]
	short_description: "Creates a GCP User"
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
		host: {
			description: [
				"The host name from which the user can connect. For insert operations, host defaults to an empty string. For update operations, host is specified as part of the request URL. The host name cannot be updated after insertion.",
			]

			required: true
			type:     "str"
		}
		name: {
			description: [
				"The name of the user in the Cloud SQL instance.",
			]
			required: true
			type:     "str"
		}
		instance: {
			description: [
				"The name of the Cloud SQL instance. This does not include the project ID.",
				"This field represents a link to a Instance resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_sql_instance task and then set this instance field to \"{{ name-of-resource }}\"",
			]

			required: true
			type:     "dict"
		}
		password: {
			description: [
				"The password for the user.",
			]
			required: false
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
