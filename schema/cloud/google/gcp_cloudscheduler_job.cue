package ansible

module: gcp_cloudscheduler_job: {
	module: "gcp_cloudscheduler_job"
	description: [
		"A scheduled job that can publish a pubsub message or a http request every X interval of time, using crontab format string.",
		"To use Cloud Scheduler your project must contain an App Engine app that is located in one of the supported regions. If your project does not have an App Engine app, you must create one.",
	]

	short_description: "Creates a GCP Job"
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
				"The name of the job.",
			]
			required: true
			type:     "str"
		}
		description: {
			description: [
				"A human-readable description for the job. This string must not contain more than 500 characters.",
			]

			required: false
			type:     "str"
		}
		schedule: {
			description: [
				"Describes the schedule on which the job will be executed.",
			]
			required: false
			type:     "str"
		}
		time_zone: {
			description: [
				"Specifies the time zone to be used in interpreting schedule.",
				"The value of this field must be a time zone name from the tz database.",
			]
			required: false
			default:  "Etc/UTC"
			type:     "str"
		}
		retry_config: {
			description: [
				"By default, if a job does not complete successfully, meaning that an acknowledgement is not received from the handler, then it will be retried with exponential backoff according to the settings .",
			]

			required: false
			type:     "dict"
			suboptions: {
				retry_count: {
					description: [
						"The number of attempts that the system will make to run a job using the exponential backoff procedure described by maxDoublings.",
						"Values greater than 5 and negative values are not allowed.",
					]
					required: false
					type:     "int"
				}
				max_retry_duration: {
					description: [
						"The time limit for retrying a failed job, measured from time when an execution was first attempted. If specified with retryCount, the job will be retried until both limits are reached.",
						"A duration in seconds with up to nine fractional digits, terminated by 's'.",
					]
					required: false
					type:     "str"
				}
				min_backoff_duration: {
					description: [
						"The minimum amount of time to wait before retrying a job after it fails.",
						"A duration in seconds with up to nine fractional digits, terminated by 's'.",
					]
					required: false
					type:     "str"
				}
				max_backoff_duration: {
					description: [
						"The maximum amount of time to wait before retrying a job after it fails.",
						"A duration in seconds with up to nine fractional digits, terminated by 's'.",
					]
					required: false
					type:     "str"
				}
				max_doublings: {
					description: [
						"The time between retries will double maxDoublings times.",
						"A job's retry interval starts at minBackoffDuration, then doubles maxDoublings times, then increases linearly, and finally retries retries at intervals of maxBackoffDuration up to retryCount times.",
					]

					required: false
					type:     "int"
				}
			}
		}
		pubsub_target: {
			description: [
				"Pub/Sub target If the job providers a Pub/Sub target the cron will publish a message to the provided topic .",
			]

			required: false
			type:     "dict"
			suboptions: {
				topic_name: {
					description: [
						"The name of the Cloud Pub/Sub topic to which messages will be published when a job is delivered. The topic name must be in the same format as required by PubSub's PublishRequest.name, for example projects/PROJECT_ID/topics/TOPIC_ID.",
					]

					required: true
					type:     "str"
				}
				data: {
					description: [
						"The message payload for PubsubMessage.",
						"Pubsub message must contain either non-empty data, or at least one attribute.",
					]
					required: false
					type:     "str"
				}
				attributes: {
					description: [
						"Attributes for PubsubMessage.",
						"Pubsub message must contain either non-empty data, or at least one attribute.",
					]
					required: false
					type:     "dict"
				}
			}
		}
		app_engine_http_target: {
			description: [
				"App Engine HTTP target.",
				"If the job providers a App Engine HTTP target the cron will send a request to the service instance .",
			]

			required: false
			type:     "dict"
			suboptions: {
				http_method: {
					description: [
						"Which HTTP method to use for the request.",
					]
					required: false
					type:     "str"
				}
				app_engine_routing: {
					description: [
						"App Engine Routing setting for the job.",
					]
					required: false
					type:     "dict"
					suboptions: {
						service: {
							description: [
								"App service.",
								"By default, the job is sent to the service which is the default service when the job is attempted.",
							]

							required: false
							type:     "str"
						}
						version: {
							description: [
								"App version.",
								"By default, the job is sent to the version which is the default version when the job is attempted.",
							]

							required: false
							type:     "str"
						}
						instance: {
							description: [
								"App instance.",
								"By default, the job is sent to an instance which is available when the job is attempted.",
							]

							required: false
							type:     "str"
						}
					}
				}
				relative_uri: {
					description: [
						"The relative URI.",
					]
					required: true
					type:     "str"
				}
				body: {
					description: [
						"HTTP request body. A request body is allowed only if the HTTP method is POST or PUT. It will result in invalid argument error to set a body on a job with an incompatible HttpMethod.",
					]

					required: false
					type:     "str"
				}
				headers: {
					description: [
						"HTTP request headers.",
						"This map contains the header field names and values. Headers can be set when the job is created.",
					]

					required: false
					type:     "dict"
				}
			}
		}
		http_target: {
			description: [
				"HTTP target.",
				"If the job providers a http_target the cron will send a request to the targeted url .",
			]

			required: false
			type:     "dict"
			suboptions: {
				uri: {
					description: [
						"The full URI path that the request will be sent to.",
					]
					required: true
					type:     "str"
				}
				http_method: {
					description: [
						"Which HTTP method to use for the request.",
					]
					required: false
					type:     "str"
				}
				body: {
					description: [
						"HTTP request body. A request body is allowed only if the HTTP method is POST, PUT, or PATCH. It is an error to set body on a job with an incompatible HttpMethod.",
					]

					required: false
					type:     "str"
				}
				headers: {
					description: [
						"This map contains the header field names and values. Repeated headers are not supported, but a header value can contain commas.",
					]

					required: false
					type:     "dict"
				}
				oauth_token: {
					description: [
						"Contains information needed for generating an OAuth token.",
						"This type of authorization should be used when sending requests to a GCP endpoint.",
					]

					required: false
					type:     "dict"
					suboptions: {
						service_account_email: {
							description: [
								"Service account email to be used for generating OAuth token.",
								"The service account must be within the same project as the job.",
							]
							required: false
							type:     "str"
						}
						scope: {
							description: [
								"OAuth scope to be used for generating OAuth access token. If not specified, \"U(https://www.googleapis.com/auth/cloud-platform\") will be used.",
							]

							required: false
							type:     "str"
						}
					}
				}
				oidc_token: {
					description: [
						"Contains information needed for generating an OpenID Connect token.",
						"This type of authorization should be used when sending requests to third party endpoints or Cloud Run.",
					]

					required: false
					type:     "dict"
					suboptions: {
						service_account_email: {
							description: [
								"Service account email to be used for generating OAuth token.",
								"The service account must be within the same project as the job.",
							]
							required: false
							type:     "str"
						}
						audience: {
							description: [
								"Audience to be used when generating OIDC token. If not specified, the URI specified in target will be used.",
							]

							required: false
							type:     "str"
						}
					}
				}
			}
		}
		region: {
			description: [
				"Region where the scheduler job resides .",
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
	notes: [
		"API Reference: U(https://cloud.google.com/scheduler/docs/reference/rest/)",
		"Official Documentation: U(https://cloud.google.com/scheduler/)",
		"for authentication, you can set service_account_file using the C(gcp_service_account_file) env variable.",
		"for authentication, you can set service_account_contents using the C(GCP_SERVICE_ACCOUNT_CONTENTS) env variable.",
		"For authentication, you can set service_account_email using the C(GCP_SERVICE_ACCOUNT_EMAIL) env variable.",
		"For authentication, you can set auth_kind using the C(GCP_AUTH_KIND) env variable.",
		"For authentication, you can set scopes using the C(GCP_SCOPES) env variable.",
		"Environment variables values will only be used if the playbook values are not set.",
		"The I(service_account_email) and I(service_account_file) options are mutually exclusive.",
	]
}
