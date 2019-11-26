package ansible

module: gcp_appengine_firewall_rule: {
	module: "gcp_appengine_firewall_rule"
	description: [
		"A single firewall rule that is evaluated against incoming traffic and provides an action to take on matched requests.",
	]

	short_description: "Creates a GCP FirewallRule"
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
		description: {
			description: [
				"An optional string description of this rule.",
			]
			required: false
			type:     "str"
		}
		source_range: {
			description: [
				"IP address or range, defined using CIDR notation, of requests that this rule applies to.",
			]

			required: true
			type:     "str"
		}
		action: {
			description: [
				"The action to take if this rule matches.",
				"Some valid choices include: \"UNSPECIFIED_ACTION\", \"ALLOW\", \"DENY\"",
			]
			required: true
			type:     "str"
		}
		priority: {
			description: [
				"A positive integer that defines the order of rule evaluation.",
				"Rules with the lowest priority are evaluated first.",
				"A default rule at priority Int32.MaxValue matches all IPv4 and IPv6 traffic when no previous rule matches. Only the action of this rule can be modified by the user.",
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
		"API Reference: U(https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.firewall.ingressRules)",
		"Official Documentation: U(https://cloud.google.com/appengine/docs/standard/python/creating-firewalls#creating_firewall_rules)",
		"for authentication, you can set service_account_file using the C(gcp_service_account_file) env variable.",
		"for authentication, you can set service_account_contents using the C(GCP_SERVICE_ACCOUNT_CONTENTS) env variable.",
		"For authentication, you can set service_account_email using the C(GCP_SERVICE_ACCOUNT_EMAIL) env variable.",
		"For authentication, you can set auth_kind using the C(GCP_AUTH_KIND) env variable.",
		"For authentication, you can set scopes using the C(GCP_SCOPES) env variable.",
		"Environment variables values will only be used if the playbook values are not set.",
		"The I(service_account_email) and I(service_account_file) options are mutually exclusive.",
	]
}
