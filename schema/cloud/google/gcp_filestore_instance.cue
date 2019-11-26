package ansible

module: gcp_filestore_instance: {
	module: "gcp_filestore_instance"
	description: [
		"A Google Cloud Filestore instance.",
	]
	short_description: "Creates a GCP Instance"
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
				"The resource name of the instance.",
			]
			required: true
			type:     "str"
		}
		description: {
			description: [
				"A description of the instance.",
			]
			required: false
			type:     "str"
		}
		tier: {
			description: [
				"The service tier of the instance.",
				"Some valid choices include: \"TIER_UNSPECIFIED\", \"STANDARD\", \"PREMIUM\"",
			]
			required: true
			type:     "str"
		}
		labels: {
			description: [
				"Resource labels to represent user-provided metadata.",
			]
			required: false
			type:     "dict"
		}
		file_shares: {
			description: [
				"File system shares on the instance. For this version, only a single file share is supported.",
			]

			required: true
			type:     "list"
			suboptions: {
				name: {
					description: [
						"The name of the fileshare (16 characters or less) .",
					]
					required: true
					type:     "str"
				}
				capacity_gb: {
					description: [
						"File share capacity in GiB. This must be at least 1024 GiB for the standard tier, or 2560 GiB for the premium tier.",
					]

					required: true
					type:     "int"
				}
			}
		}
		networks: {
			description: [
				"VPC networks to which the instance is connected. For this version, only a single network is supported.",
			]

			required: true
			type:     "list"
			suboptions: {
				network: {
					description: [
						"The name of the GCE VPC network to which the instance is connected.",
					]
					required: true
					type:     "str"
				}
				modes: {
					description: [
						"IP versions for which the instance has IP addresses assigned.",
					]
					required: true
					type:     "list"
				}
				reserved_ip_range: {
					description: [
						"A /29 CIDR block that identifies the range of IP addresses reserved for this instance.",
					]

					required: false
					type:     "str"
				}
			}
		}
		zone: {
			description: [
				"The name of the Filestore zone of the instance.",
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
		"API Reference: U(https://cloud.google.com/filestore/docs/reference/rest/v1beta1/projects.locations.instances/create)",
		"Official Documentation: U(https://cloud.google.com/filestore/docs/creating-instances)",
		"Use with Kubernetes: U(https://cloud.google.com/filestore/docs/accessing-fileshares)",
		"Copying Data In/Out: U(https://cloud.google.com/filestore/docs/copying-data)",
		"for authentication, you can set service_account_file using the C(gcp_service_account_file) env variable.",
		"for authentication, you can set service_account_contents using the C(GCP_SERVICE_ACCOUNT_CONTENTS) env variable.",
		"For authentication, you can set service_account_email using the C(GCP_SERVICE_ACCOUNT_EMAIL) env variable.",
		"For authentication, you can set auth_kind using the C(GCP_AUTH_KIND) env variable.",
		"For authentication, you can set scopes using the C(GCP_SCOPES) env variable.",
		"Environment variables values will only be used if the playbook values are not set.",
		"The I(service_account_email) and I(service_account_file) options are mutually exclusive.",
	]
}
