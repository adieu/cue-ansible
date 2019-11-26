package ansible

module: gcp_resourcemanager_project: {
	module: "gcp_resourcemanager_project"
	description: [
		"Represents a GCP Project. A project is a container for ACLs, APIs, App Engine Apps, VMs, and other Google Cloud Platform resources.",
	]

	short_description: "Creates a GCP Project"
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
		name: {
			description: [
				"The user-assigned display name of the Project. It must be 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point.",
			]

			required: false
			type:     "str"
		}
		labels: {
			description: [
				"The labels associated with this Project.",
				"Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`.",
				"Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.",
				"No more than 256 labels can be associated with a given resource.",
				"Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed .",
			]

			required: false
			type:     "dict"
		}
		parent: {
			description: [
				"A parent organization.",
			]
			required: false
			type:     "dict"
			suboptions: {
				type: {
					description: [
						"Must be organization.",
					]
					required: false
					type:     "str"
				}
				id: {
					description: [
						"Id of the organization.",
					]
					required: false
					type:     "str"
				}
			}
		}
		id: {
			description: [
				"The unique, user-assigned ID of the Project. It must be 6 to 30 lowercase letters, digits, or hyphens. It must start with a letter.",
				"Trailing hyphens are prohibited.",
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
