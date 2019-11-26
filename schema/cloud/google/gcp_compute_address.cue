package ansible

module: gcp_compute_address: {
	module: "gcp_compute_address"
	description: [
		"Represents an Address resource.",
		"Each virtual machine instance has an ephemeral internal IP address and, optionally, an external IP address. To communicate between instances on the same network, you can use an instance's internal IP address. To communicate with the Internet and instances outside of the same network, you must specify the instance's external IP address.",
		"Internal IP addresses are ephemeral and only belong to an instance for the lifetime of the instance; if the instance is deleted and recreated, the instance is assigned a new internal IP address, either by Compute Engine or by you. External IP addresses can be either ephemeral or static.",
	]

	short_description: "Creates a GCP Address"
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
		address: {
			description: [
				"The static external IP address represented by this resource. Only IPv4 is supported. An address may only be specified for INTERNAL address types. The IP address must be inside the specified subnetwork, if any.",
			]

			required: false
			type:     "str"
		}
		address_type: {
			description: [
				"The type of address to reserve, either INTERNAL or EXTERNAL.",
				"If unspecified, defaults to EXTERNAL.",
				"Some valid choices include: \"INTERNAL\", \"EXTERNAL\"",
			]
			required:      false
			default:       "EXTERNAL"
			type:          "str"
			version_added: "2.7"
		}
		description: {
			description: [
				"An optional description of this resource.",
			]
			required: false
			type:     "str"
		}
		name: {
			description: [
				"Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.",
			]

			required: true
			type:     "str"
		}
		purpose: {
			description: [
				"The purpose of this resource, which can be one of the following values: - GCE_ENDPOINT for addresses that are used by VM instances, alias IP ranges, internal load balancers, and similar resources.",
				"This should only be set when using an Internal address.",
				"Some valid choices include: \"GCE_ENDPOINT\"",
			]
			required:      false
			type:          "str"
			version_added: "2.10"
		}
		network_tier: {
			description: [
				"The networking tier used for configuring this address. This field can take the following values: PREMIUM or STANDARD. If this field is not specified, it is assumed to be PREMIUM.",
				"Some valid choices include: \"PREMIUM\", \"STANDARD\"",
			]
			required:      false
			type:          "str"
			version_added: "2.8"
		}
		subnetwork: {
			description: [
				"The URL of the subnetwork in which to reserve the address. If an IP address is specified, it must be within the subnetwork's IP range.",
				"This field can only be used with INTERNAL type with GCE_ENDPOINT/DNS_RESOLVER purposes.",
				"This field represents a link to a Subnetwork resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_subnetwork task and then set this subnetwork field to \"{{ name-of-resource }}\"",
			]

			required:      false
			type:          "dict"
			version_added: "2.7"
		}
		region: {
			description: [
				"URL of the region where the regional address resides.",
				"This field is not applicable to global addresses.",
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
		"API Reference: U(https://cloud.google.com/compute/docs/reference/beta/addresses)",
		"Reserving a Static External IP Address: U(https://cloud.google.com/compute/docs/instances-and-network)",
		"Reserving a Static Internal IP Address: U(https://cloud.google.com/compute/docs/ip-addresses/reserve-static-internal-ip-address)",
		"for authentication, you can set service_account_file using the C(gcp_service_account_file) env variable.",
		"for authentication, you can set service_account_contents using the C(GCP_SERVICE_ACCOUNT_CONTENTS) env variable.",
		"For authentication, you can set service_account_email using the C(GCP_SERVICE_ACCOUNT_EMAIL) env variable.",
		"For authentication, you can set auth_kind using the C(GCP_AUTH_KIND) env variable.",
		"For authentication, you can set scopes using the C(GCP_SCOPES) env variable.",
		"Environment variables values will only be used if the playbook values are not set.",
		"The I(service_account_email) and I(service_account_file) options are mutually exclusive.",
	]
}
