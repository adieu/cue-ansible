package ansible

module: gcp_backend_service: {
	module:            "gcp_backend_service"
	version_added:     "2.4"
	short_description: "Create or Destroy a Backend Service."
	description: [
		"Create or Destroy a Backend Service.  See U(https://cloud.google.com/compute/docs/load-balancing/http/backend-service) for an overview. Full install/configuration instructions for the Google Cloud modules can be found in the comments of ansible/test/gce_tests.py.",
	]

	requirements: [
		"python >= 2.6",
		"apache-libcloud >= 1.3.0",
	]
	notes: [
		"Update is not currently supported.",
		"Only global backend services are currently supported. Regional backends not currently supported.",
		"Internal load balancing not currently supported.",
	]
	deprecated: {
		removed_in:  "2.12"
		why:         "Updated modules released with increased functionality"
		alternative: "Use M(gcp_compute_backend_service) instead."
	}
	author: [
		"Tom Melendez (@supertom) <tom@supertom.com>",
	]
	options: {
		backend_service_name: {
			description: [
				"Name of the Backend Service.",
			]
			required: true
		}
		backends: {
			description: [
				"List of backends that make up the backend service. A backend is made up of an instance group and optionally several other parameters.  See U(https://cloud.google.com/compute/docs/reference/latest/backendServices) for details.",
			]

			required: true
		}
		healthchecks: {
			description: [
				"List of healthchecks. Only one healthcheck is supported.",
			]
			required: true
		}
		enable_cdn: {
			description: [
				"If true, enable Cloud CDN for this Backend Service.",
			]
			type: "bool"
		}
		port_name: description: [
			"Name of the port on the managed instance group (MIG) that backend services can forward data to. Required for external load balancing.",
		]

		protocol: {
			description: [
				"The protocol this Backend Service uses to communicate with backends. Possible values are HTTP, HTTPS, TCP, and SSL. The default is HTTP.",
			]

			required: false
		}
		timeout: {
			description: [
				"How many seconds to wait for the backend before considering it a failed request. Default is 30 seconds. Valid range is 1-86400.",
			]

			required: false
		}
		service_account_email: description: [
			"Service account email",
		]
		credentials_file: description: [
			"Path to the JSON file associated with the service account email.",
		]
		project_id: description: [
			"GCE project ID.",
		]
		state: {
			description: [
				"Desired state of the resource",
			]
			default: "present"
			choices: ["absent", "present"]
		}
	}
}
