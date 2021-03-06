package ansible

module: azure_rm_resource: {
	module:            "azure_rm_resource"
	version_added:     "2.6"
	short_description: "Create any Azure resource"
	description: [
		"Create, update or delete any Azure resource using Azure REST API.",
		"This module gives access to resources that are not supported via Ansible modules.",
		"Refer to U(https://docs.microsoft.com/en-us/rest/api/) regarding details related to specific resource REST API.",
	]

	options: {
		url: description: [
			"Azure RM Resource URL.",
		]
		api_version: description: [
			"Specific API version to be used.",
		]
		provider: description: [
			"Provider type.",
			"Required if URL is not specified.",
		]
		resource_group: description: [
			"Resource group to be used.",
			"Required if URL is not specified.",
		]
		resource_type: description: [
			"Resource type.",
			"Required if URL is not specified.",
		]
		resource_name: description: [
			"Resource name.",
			"Required if URL Is not specified.",
		]
		subresource: {
			description: [
				"List of subresources.",
			]
			suboptions: {
				namespace: description: [
					"Subresource namespace.",
				]
				type: description: [
					"Subresource type.",
				]
				name: description: [
					"Subresource name.",
				]
			}
		}
		body: description: [
			"The body of the HTTP request/response to the web service.",
		]
		method: {
			description: [
				"The HTTP method of the request or response. It must be uppercase.",
			]
			choices: [
				"GET",
				"PUT",
				"POST",
				"HEAD",
				"PATCH",
				"DELETE",
				"MERGE",
			]
			default: "PUT"
		}
		status_code: {
			description: [
				"A valid, numeric, HTTP status code that signifies success of the request. Can also be comma separated list of status codes.",
			]
			type: "list"
			default: [200, 201, 202]
		}
		idempotency: {
			description: [
				"If enabled, idempotency check will be done by using I(method=GET) first and then comparing with I(body).",
			]
			default: false
			type:    "bool"
		}
		polling_timeout: {
			description: [
				"If enabled, idempotency check will be done by using I(method=GET) first and then comparing with I(body).",
			]
			default:       0
			type:          "int"
			version_added: "2.8"
		}
		polling_interval: {
			description: [
				"If enabled, idempotency check will be done by using I(method=GET) first and then comparing with I(body).",
			]
			default:       60
			type:          "int"
			version_added: "2.8"
		}
		state: {
			description: [
				"Assert the state of the resource. Use C(present) to create or update resource or C(absent) to delete resource.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
