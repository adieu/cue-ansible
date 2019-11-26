package ansible

module: gcp_iam_service_account_key: {
	module: "gcp_iam_service_account_key"
	description: [
		"A service account in the Identity and Access Management API.",
	]
	short_description: "Creates a GCP ServiceAccountKey"
	version_added:     "2.8"
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
		private_key_type: {
			description: [
				"Output format for the service account key.",
				"Some valid choices include: \"TYPE_UNSPECIFIED\", \"TYPE_PKCS12_FILE\", \"TYPE_GOOGLE_CREDENTIALS_FILE\"",
			]
			required: false
			type:     "str"
		}
		key_algorithm: {
			description: [
				"Specifies the algorithm for the key.",
				"Some valid choices include: \"KEY_ALG_UNSPECIFIED\", \"KEY_ALG_RSA_1024\", \"KEY_ALG_RSA_2048\"",
			]
			required: false
			type:     "str"
		}
		service_account: {
			description: [
				"The name of the serviceAccount.",
				"This field represents a link to a ServiceAccount resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_iam_service_account task and then set this service_account field to \"{{ name-of-resource }}\"",
			]

			required: false
			type:     "dict"
		}
		path: {
			description: [
				"The full name of the file that will hold the service account private key. The management of this file will depend on the value of sync_file parameter.",
				"File path must be absolute.",
			]
			required: false
			type:     "path"
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
