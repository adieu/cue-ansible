package ansible

module: gcp_compute_target_instance: {
	module: "gcp_compute_target_instance"
	description: [
		"Represents a TargetInstance resource which defines an endpoint instance that terminates traffic of certain protocols. In particular, they are used in Protocol Forwarding, where forwarding rules can send packets to a non-NAT'ed target instance. Each target instance contains a single virtual machine instance that receives and handles traffic from the corresponding forwarding rules.",
	]

	short_description: "Creates a GCP TargetInstance"
	version_added:     "2.10"
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
				"Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.",
			]

			required: true
			type:     "str"
		}
		description: {
			description: [
				"An optional description of this resource.",
			]
			required: false
			type:     "str"
		}
		instance: {
			description: [
				"A URL to the virtual machine instance that handles traffic for this target instance. Accepts self-links or the partial paths with format `projects/project/zones/zone/instances/instance' or `zones/zone/instances/instance` .",
				"This field represents a link to a Instance resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_instance task and then set this instance field to \"{{ name-of-resource }}\"",
			]

			required: true
			type:     "dict"
		}
		nat_policy: {
			description: [
				"NAT option controlling how IPs are NAT'ed to the instance.",
				"Currently only NO_NAT (default value) is supported.",
				"Some valid choices include: \"NO_NAT\"",
			]
			required: false
			default:  "NO_NAT"
			type:     "str"
		}
		zone: {
			description: [
				"URL of the zone where the target instance resides.",
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
		"API Reference: U(https://cloud.google.com/compute/docs/reference/v1/targetInstances)",
		"Using Protocol Forwarding: U(https://cloud.google.com/compute/docs/protocol-forwarding)",
		"for authentication, you can set service_account_file using the C(gcp_service_account_file) env variable.",
		"for authentication, you can set service_account_contents using the C(GCP_SERVICE_ACCOUNT_CONTENTS) env variable.",
		"For authentication, you can set service_account_email using the C(GCP_SERVICE_ACCOUNT_EMAIL) env variable.",
		"For authentication, you can set auth_kind using the C(GCP_AUTH_KIND) env variable.",
		"For authentication, you can set scopes using the C(GCP_SCOPES) env variable.",
		"Environment variables values will only be used if the playbook values are not set.",
		"The I(service_account_email) and I(service_account_file) options are mutually exclusive.",
	]
}
