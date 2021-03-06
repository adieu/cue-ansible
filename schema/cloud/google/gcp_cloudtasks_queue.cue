package ansible

module: gcp_cloudtasks_queue: {
	module: "gcp_cloudtasks_queue"
	description: [
		"A named resource to which messages are sent by publishers.",
	]
	short_description: "Creates a GCP Queue"
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
				"The queue name.",
			]
			required: false
			type:     "str"
		}
		app_engine_routing_override: {
			description: [
				"Overrides for task-level appEngineRouting. These settings apply only to App Engine tasks in this queue .",
			]

			required: false
			type:     "dict"
			suboptions: {
				service: {
					description: [
						"App service.",
						"By default, the task is sent to the service which is the default service when the task is attempted.",
					]

					required: false
					type:     "str"
				}
				version: {
					description: [
						"App version.",
						"By default, the task is sent to the version which is the default version when the task is attempted.",
					]

					required: false
					type:     "str"
				}
				instance: {
					description: [
						"App instance.",
						"By default, the task is sent to an instance which is available when the task is attempted.",
					]

					required: false
					type:     "str"
				}
			}
		}
		rate_limits: {
			description: [
				"Rate limits for task dispatches. The queue's actual dispatch rate is the result of: * Number of tasks in the queue * User-specified throttling: rateLimits, retryConfig, and the queue's state.",
				"* System throttling due to 429 (Too Many Requests) or 503 (Service Unavailable) responses from the worker, high error rates, or to smooth sudden large traffic spikes.",
			]

			required: false
			type:     "dict"
			suboptions: {
				max_dispatches_per_second: {
					description: [
						"The maximum rate at which tasks are dispatched from this queue.",
						"If unspecified when the queue is created, Cloud Tasks will pick the default.",
					]
					required: false
					type:     "int"
				}
				max_concurrent_dispatches: {
					description: [
						"The maximum number of concurrent tasks that Cloud Tasks allows to be dispatched for this queue. After this threshold has been reached, Cloud Tasks stops dispatching tasks until the number of concurrent requests decreases.",
					]

					required: false
					type:     "int"
				}
			}
		}
		retry_config: {
			description: [
				"Settings that determine the retry behavior.",
			]
			required: false
			type:     "dict"
			suboptions: {
				max_attempts: {
					description: [
						"Number of attempts per task.",
						"Cloud Tasks will attempt the task maxAttempts times (that is, if the first attempt fails, then there will be maxAttempts - 1 retries). Must be >= -1.",
						"If unspecified when the queue is created, Cloud Tasks will pick the default.",
						"-1 indicates unlimited attempts.",
					]
					required: false
					type:     "int"
				}
				max_retry_duration: {
					description: [
						"If positive, maxRetryDuration specifies the time limit for retrying a failed task, measured from when the task was first attempted. Once maxRetryDuration time has passed and the task has been attempted maxAttempts times, no further attempts will be made and the task will be deleted.",
						"If zero, then the task age is unlimited.",
					]
					required: false
					type:     "str"
				}
				min_backoff: {
					description: [
						"A task will be scheduled for retry between minBackoff and maxBackoff duration after it fails, if the queue's RetryConfig specifies that the task should be retried.",
					]

					required: false
					type:     "str"
				}
				max_backoff: {
					description: [
						"A task will be scheduled for retry between minBackoff and maxBackoff duration after it fails, if the queue's RetryConfig specifies that the task should be retried.",
					]

					required: false
					type:     "str"
				}
				max_doublings: {
					description: [
						"The time between retries will double maxDoublings times.",
						"A task's retry interval starts at minBackoff, then doubles maxDoublings times, then increases linearly, and finally retries retries at intervals of maxBackoff up to maxAttempts times.",
					]

					required: false
					type:     "int"
				}
			}
		}
		status: {
			description: [
				"The current state of the queue.",
				"Some valid choices include: \"RUNNING\", \"PAUSED\", \"DISABLED\"",
			]
			required: false
			type:     "str"
		}
		location: {
			description: [
				"The location of the queue.",
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
