package ansible

module: gcp_dns_resource_record_set: {
	module: "gcp_dns_resource_record_set"
	description: [
		"A single DNS record that exists on a domain name (i.e. in a managed zone).",
		"This record defines the information about the domain and where the domain / subdomains direct to.",
		"The record will include the domain/subdomain name, a type (i.e. A, AAA, CAA, MX, CNAME, NS, etc) .",
	]

	short_description: "Creates a GCP ResourceRecordSet"
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
		name: {
			description: [
				"For example, U(www.example.com).",
			]
			required: true
			type:     "str"
		}
		type: {
			description: [
				"One of valid DNS resource types.",
				"Some valid choices include: \"A\", \"AAAA\", \"CAA\", \"CNAME\", \"MX\", \"NAPTR\", \"NS\", \"PTR\", \"SOA\", \"SPF\", \"SRV\", \"TLSA\", \"TXT\"",
			]

			required: true
			type:     "str"
		}
		ttl: {
			description: [
				"Number of seconds that this ResourceRecordSet can be cached by resolvers.",
			]
			required: false
			type:     "int"
		}
		target: {
			description: [
				"As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) .",
			]
			required: false
			type:     "list"
		}
		managed_zone: {
			description: [
				"Identifies the managed zone addressed by this request. This must be a dictionary that contains both a 'name' key and a 'dnsName' key. You can pass in the results of the gcp_dns_managed_zone module, which will contain both.",
			]

			required: true
			type:     "dict"
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
