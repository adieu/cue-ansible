package ansible

module: gcp_cloudfunctions_cloud_function: {
	module: "gcp_cloudfunctions_cloud_function"
	description: [
		"A Cloud Function that contains user computation executed in response to an event.",
	]
	short_description: "Creates a GCP CloudFunction"
	version_added:     "2.9"
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
				"A user-defined name of the function. Function names must be unique globally and match pattern `projects/*/locations/*/functions/*`.",
			]

			required: true
			type:     "str"
		}
		description: {
			description: [
				"User-provided description of a function.",
			]
			required: false
			type:     "str"
		}
		entry_point: {
			description: [
				"The name of the function (as defined in source code) that will be executed.",
				"Defaults to the resource name suffix, if not specified. For backward compatibility, if function with given name is not found, then the system will try to use function named \"function\". For Node.js this is name of a function exported by the module specified in source_location.",
			]

			required: false
			type:     "str"
		}
		runtime: {
			description: [
				"The runtime in which the function is going to run. If empty, defaults to Node.js 6.",
			]

			required: false
			type:     "str"
		}
		timeout: {
			description: [
				"The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.",
			]

			required: false
			type:     "str"
		}
		available_memory_mb: {
			description: [
				"The amount of memory in MB available for a function.",
			]
			required: false
			type:     "int"
		}
		labels: {
			description: [
				"A set of key/value label pairs associated with this Cloud Function.",
			]
			required: false
			type:     "dict"
		}
		environment_variables: {
			description: [
				"Environment variables that shall be available during function execution.",
			]
			required: false
			type:     "dict"
		}
		source_archive_url: {
			description: [
				"The Google Cloud Storage URL, starting with gs://, pointing to the zip archive which contains the function.",
			]

			required: false
			type:     "str"
		}
		source_upload_url: {
			description: [
				"The Google Cloud Storage signed URL used for source uploading.",
			]
			required: false
			type:     "str"
		}
		source_repository: {
			description: [
				"The source repository where a function is hosted.",
			]
			required: false
			type:     "dict"
			suboptions: url: {
				description: [
					"The URL pointing to the hosted repository where the function is defined .",
				]

				required: false
				type:     "str"
			}
		}
		https_trigger: {
			description: [
				"An HTTPS endpoint type of source that can be triggered via URL.",
			]
			required: false
			type:     "dict"
			suboptions: {}
		}
		event_trigger: {
			description: [
				"An HTTPS endpoint type of source that can be triggered via URL.",
			]
			required: false
			type:     "dict"
			suboptions: {
				event_type: {
					description: [
						"The type of event to observe. For example: `providers/cloud.storage/eventTypes/object.change` and `providers/cloud.pubsub/eventTypes/topic.publish`.",
					]

					required: true
					type:     "str"
				}
				resource: {
					description: [
						"The resource(s) from which to observe events, for example, `projects/_/buckets/myBucket.` .",
					]

					required: true
					type:     "str"
				}
				service: {
					description: [
						"The hostname of the service that should be observed.",
					]
					required: false
					type:     "str"
				}
			}
		}
		location: {
			description: [
				"The location of this cloud function.",
			]
			required: true
			type:     "str"
		}
		trigger_http: {
			description: [
				"Use HTTP to trigger this function.",
			]
			required: false
			type:     "bool"
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
