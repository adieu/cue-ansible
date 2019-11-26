package ansible

module: azure_rm_cdnendpoint: {
	module:            "azure_rm_cdnendpoint"
	version_added:     "2.8"
	short_description: "Manage a Azure CDN endpoint"
	description: [
		"Create, update, start, stop and delete a Azure CDN endpoint.",
	]

	options: {
		resource_group: {
			description: [
				"Name of a resource group where the Azure CDN endpoint exists or will be created.",
			]
			required: true
		}
		name: {
			description: [
				"Name of the Azure CDN endpoint.",
			]
			required: true
		}
		location: description: [
			"Valid azure location. Defaults to location of the resource group.",
		]
		started: {
			description: [
				"Use with I(state=present) to start the endpoint.",
			]
			type: "bool"
		}
		purge: {
			description: [
				"Use with I(state=present) to purge the endpoint.",
			]
			type:    "bool"
			default: false
		}
		purge_content_paths: {
			description: [
				"Use with I(state=present) and I(purge=true) to specify content paths to be purged.",
			]
			type: "list"
			default: ["/"]
		}
		profile_name: {
			description: [
				"Name of the CDN profile where the endpoint attached to.",
			]
			required: true
		}
		origins: {
			description: [
				"Set of source of the content being delivered via CDN.",
			]
			suboptions: {
				name: {
					description: [
						"Origin name.",
					]
					required: true
				}
				host_name: {
					description: [
						"The address of the origin.",
						"It can be a domain name, IPv4 address, or IPv6 address.",
					]
					required: true
				}
				http_port: {
					description: [
						"The value of the HTTP port. Must be between C(1) and C(65535).",
					]
					type: "int"
				}
				https_port: {
					description: [
						"The value of the HTTPS port. Must be between C(1) and C(65535).",
					]
					type: "int"
				}
			}
			required: true
		}
		origin_host_header: {
			description: [
				"The host header value sent to the origin with each request.",
			]
			type: "str"
		}
		origin_path: {
			description: [
				"A directory path on the origin that CDN can use to retrieve content from.",
				"E.g. contoso.cloudapp.net/originpath.",
			]
			type: "str"
		}
		content_types_to_compress: {
			description: [
				"List of content types on which compression applies.",
				"This value should be a valid MIME type.",
			]
			type: "list"
		}
		is_compression_enabled: {
			description: [
				"Indicates whether content compression is enabled on CDN.",
			]
			type:    "bool"
			default: false
		}
		is_http_allowed: {
			description: [
				"Indicates whether HTTP traffic is allowed on the endpoint.",
			]
			type:    "bool"
			default: true
		}
		is_https_allowed: {
			description: [
				"Indicates whether HTTPS traffic is allowed on the endpoint.",
			]
			type:    "bool"
			default: true
		}
		query_string_caching_behavior: {
			description: [
				"Defines how CDN caches requests that include query strings.",
			]
			type: "str"
			choices: [
				"ignore_query_string",
				"bypass_caching",
				"use_query_string",
				"not_set",
			]
			default: "ignore_query_string"
		}
		state: {
			description: [
				"Assert the state of the Azure CDN endpoint. Use C(present) to create or update a Azure CDN endpoint and C(absent) to delete it.",
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
		"azure_tags",
	]

	author: ["Yunge Zhu (@yungezz)"]
}
