package ansible

module: gcp_healthcheck: {
	module:            "gcp_healthcheck"
	version_added:     "2.4"
	short_description: "Create, Update or Destroy a Healthcheck."
	description: [
		"Create, Update or Destroy a Healthcheck. Currently only HTTP and HTTPS Healthchecks are supported. Healthchecks are used to monitor individual instances, managed instance groups and/or backend services. Healtchecks are reusable.",
		"Visit U(https://cloud.google.com/compute/docs/load-balancing/health-checks) for an overview of Healthchecks on GCP.",
		"See U(https://cloud.google.com/compute/docs/reference/latest/httpHealthChecks) for API details on HTTP Healthchecks.",
		"See U(https://cloud.google.com/compute/docs/reference/latest/httpsHealthChecks) for more details on the HTTPS Healtcheck API.",
	]

	requirements: [
		"python >= 2.6",
		"google-api-python-client >= 1.6.2",
		"google-auth >= 0.9.0",
		"google-auth-httplib2 >= 0.0.2",
	]
	notes: [
		"Only supports HTTP and HTTPS Healthchecks currently.",
	]
	deprecated: {
		removed_in: "2.12"
		why:        "Updated modules released with increased functionality"
		alternative: """
		Use M(gcp_compute_health_check), M(gcp_compute_http_health_check) or M(gcp_compute_https_health_check) instead.

		"""
	}

	author: [
		"Tom Melendez (@supertom) <tom@supertom.com>",
	]
	options: {
		check_interval: {
			description: [
				"How often (in seconds) to send a health check.",
			]
			default: 5
		}
		healthcheck_name: {
			description: [
				"Name of the Healthcheck.",
			]
			required: true
		}
		healthcheck_type: {
			description: [
				"Type of Healthcheck.",
			]
			required: true
			choices: ["HTTP", "HTTPS"]
		}
		host_header: {
			description: [
				"The value of the host header in the health check request. If left empty, the public IP on behalf of which this health check is performed will be used.",
			]

			required: true
			default:  ""
		}
		port: description: [
			"The TCP port number for the health check request. The default value is 443 for HTTPS and 80 for HTTP.",
		]

		request_path: {
			description: [
				"The request path of the HTTPS health check request.",
			]
			required: false
			default:  "/"
		}
		state: {
			description: "State of the Healthcheck."
			required:    true
			choices: ["present", "absent"]
		}
		timeout: {
			description: [
				"How long (in seconds) to wait for a response before claiming failure. It is invalid for timeout to have a greater value than check_interval.",
			]

			default: 5
		}
		unhealthy_threshold: {
			description: [
				"A so-far healthy instance will be marked unhealthy after this many consecutive failures.",
			]

			default: 2
		}
		healthy_threshold: {
			description: [
				"A so-far unhealthy instance will be marked healthy after this many consecutive successes.",
			]

			default: 2
		}
		service_account_email: description: [
			"service account email",
		]
		service_account_permissions: {
			version_added: "2.0"
			description: [
				"service account permissions (see U(https://cloud.google.com/sdk/gcloud/reference/compute/instances/create), --scopes section for detailed information)",
			]

			choices: [
				"bigquery",
				"cloud-platform",
				"compute-ro",
				"compute-rw",
				"useraccounts-ro",
				"useraccounts-rw",
				"datastore",
				"logging-write",
				"monitoring",
				"sql-admin",
				"storage-full",
				"storage-ro",
				"storage-rw",
				"taskqueue",
				"userinfo-email",
			]
		}

		credentials_file: description: [
			"Path to the JSON file associated with the service account email",
		]
		project_id: description: ["Your GCP project ID"]
	}
}
