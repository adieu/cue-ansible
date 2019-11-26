package ansible

module: gcp_compute_http_health_check: {
	module: "gcp_compute_http_health_check"
	description: [
		"An HttpHealthCheck resource. This resource defines a template for how individual VMs should be checked for health, via HTTP.",
	]

	short_description: "Creates a GCP HttpHealthCheck"
	version_added:     "2.6"
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
		check_interval_sec: {
			description: [
				"How often (in seconds) to send a health check. The default value is 5 seconds.",
			]
			required: false
			default:  "5"
			type:     "int"
			aliases: [
				"check_interval_seconds",
			]
		}
		description: {
			description: [
				"An optional description of this resource. Provide this property when you create the resource.",
			]

			required: false
			type:     "str"
		}
		healthy_threshold: {
			description: [
				"A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.",
			]

			required: false
			type:     "int"
		}
		host: {
			description: [
				"The value of the host header in the HTTP health check request. If left empty (default value), the public IP on behalf of which this health check is performed will be used.",
			]

			required: false
			type:     "str"
		}
		name: {
			description: [
				"Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.",
			]

			required: true
			type:     "str"
		}
		port: {
			description: [
				"The TCP port number for the HTTP health check request.",
				"The default value is 80.",
			]
			required: false
			type:     "int"
		}
		request_path: {
			description: [
				"The request path of the HTTP health check request.",
				"The default value is /.",
			]
			required: false
			type:     "str"
		}
		timeout_sec: {
			description: [
				"How long (in seconds) to wait before claiming failure.",
				"The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.",
			]

			required: false
			type:     "int"
			aliases: [
				"timeout_seconds",
			]
		}
		unhealthy_threshold: {
			description: [
				"A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.",
			]

			required: false
			type:     "int"
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
		"API Reference: U(https://cloud.google.com/compute/docs/reference/v1/httpHealthChecks)",
		"Adding Health Checks: U(https://cloud.google.com/compute/docs/load-balancing/health-checks#legacy_health_checks)",
		"for authentication, you can set service_account_file using the C(gcp_service_account_file) env variable.",
		"for authentication, you can set service_account_contents using the C(GCP_SERVICE_ACCOUNT_CONTENTS) env variable.",
		"For authentication, you can set service_account_email using the C(GCP_SERVICE_ACCOUNT_EMAIL) env variable.",
		"For authentication, you can set auth_kind using the C(GCP_AUTH_KIND) env variable.",
		"For authentication, you can set scopes using the C(GCP_SCOPES) env variable.",
		"Environment variables values will only be used if the playbook values are not set.",
		"The I(service_account_email) and I(service_account_file) options are mutually exclusive.",
	]
}
