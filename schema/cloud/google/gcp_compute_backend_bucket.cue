package ansible

module: gcp_compute_backend_bucket: {
	module: "gcp_compute_backend_bucket"
	description: [
		"Backend buckets allow you to use Google Cloud Storage buckets with HTTP(S) load balancing.",
		"An HTTP(S) load balancer can direct traffic to specified URLs to a backend bucket rather than a backend service. It can send requests for static content to a Cloud Storage bucket and requests for dynamic content to a virtual machine instance.",
	]

	short_description: "Creates a GCP BackendBucket"
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
		bucket_name: {
			description: [
				"Cloud Storage bucket name.",
			]
			required: true
			type:     "str"
		}
		cdn_policy: {
			description: [
				"Cloud CDN configuration for this Backend Bucket.",
			]
			required:      false
			type:          "dict"
			version_added: "2.8"
			suboptions: signed_url_cache_max_age_sec: {
				description: [
					"Maximum number of seconds the response to a signed URL request will be considered fresh. Defaults to 1hr (3600s). After this time period, the response will be revalidated before being served.",
					"When serving responses to signed URL requests, Cloud CDN will internally behave as though all responses from this backend had a \"Cache-Control: public, max-age=[TTL]\" header, regardless of any existing Cache-Control header. The actual headers served in responses will not be altered.",
				]

				required: false
				default:  "3600"
				type:     "int"
			}
		}
		description: {
			description: [
				"An optional textual description of the resource; provided by the client when the resource is created.",
			]

			required: false
			type:     "str"
		}
		enable_cdn: {
			description: [
				"If true, enable Cloud CDN for this BackendBucket.",
			]
			required: false
			type:     "bool"
		}
		name: {
			description: [
				"Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.",
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
		"API Reference: U(https://cloud.google.com/compute/docs/reference/v1/backendBuckets)",
		"Using a Cloud Storage bucket as a load balancer backend: U(https://cloud.google.com/compute/docs/load-balancing/http/backend-bucket)",
		"for authentication, you can set service_account_file using the C(gcp_service_account_file) env variable.",
		"for authentication, you can set service_account_contents using the C(GCP_SERVICE_ACCOUNT_CONTENTS) env variable.",
		"For authentication, you can set service_account_email using the C(GCP_SERVICE_ACCOUNT_EMAIL) env variable.",
		"For authentication, you can set auth_kind using the C(GCP_AUTH_KIND) env variable.",
		"For authentication, you can set scopes using the C(GCP_SCOPES) env variable.",
		"Environment variables values will only be used if the playbook values are not set.",
		"The I(service_account_email) and I(service_account_file) options are mutually exclusive.",
	]
}
