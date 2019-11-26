package ansible

module: gcp_compute_network: {
	module: "gcp_compute_network"
	description: [
		"Manages a VPC network or legacy network resource on GCP.",
	]
	short_description: "Creates a GCP Network"
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
		description: {
			description: [
				"An optional description of this resource. The resource must be recreated to modify this field.",
			]

			required: false
			type:     "str"
		}
		ipv4_range: {
			description: [
				"If this field is specified, a deprecated legacy network is created.",
				"You will no longer be able to create a legacy network on Feb 1, 2020.",
				"See the [legacy network docs](U(https://cloud.google.com/vpc/docs/legacy)) for more details.",
				"The range of internal addresses that are legal on this legacy network.",
				"This range is a CIDR specification, for example: `192.168.0.0/16`.",
				"The resource must be recreated to modify this field.",
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
		auto_create_subnetworks: {
			description: [
				"When set to `true`, the network is created in \"auto subnet mode\" and it will create a subnet for each region automatically across the `10.128.0.0/9` address range.",
				"When set to `false`, the network is created in \"custom subnet mode\" so the user can explicitly connect subnetwork resources.",
			]

			required: false
			type:     "bool"
		}
		routing_config: {
			description: [
				"The network-level routing configuration for this network. Used by Cloud Router to determine what type of network-wide routing behavior to enforce.",
			]

			required:      false
			type:          "dict"
			version_added: "2.8"
			suboptions: routing_mode: {
				description: [
					"The network-wide routing mode to use. If set to `REGIONAL`, this network's cloud routers will only advertise routes with subnetworks of this network in the same region as the router. If set to `GLOBAL`, this network's cloud routers will advertise routes with all subnetworks of this network, across regions.",
					"Some valid choices include: \"REGIONAL\", \"GLOBAL\"",
				]
				required: true
				type:     "str"
			}
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
		"API Reference: U(https://cloud.google.com/compute/docs/reference/rest/v1/networks)",
		"Official Documentation: U(https://cloud.google.com/vpc/docs/vpc)",
		"for authentication, you can set service_account_file using the C(gcp_service_account_file) env variable.",
		"for authentication, you can set service_account_contents using the C(GCP_SERVICE_ACCOUNT_CONTENTS) env variable.",
		"For authentication, you can set service_account_email using the C(GCP_SERVICE_ACCOUNT_EMAIL) env variable.",
		"For authentication, you can set auth_kind using the C(GCP_AUTH_KIND) env variable.",
		"For authentication, you can set scopes using the C(GCP_SCOPES) env variable.",
		"Environment variables values will only be used if the playbook values are not set.",
		"The I(service_account_email) and I(service_account_file) options are mutually exclusive.",
	]
}
