package ansible

module: utm_proxy_frontend: {
	module: "utm_proxy_frontend"

	author: [
		"Johannes Brunswicker (@MatrixCrawler)",
	]

	short_description: "create, update or destroy reverse_proxy frontend entry in Sophos UTM"

	description: [
		"Create, update or destroy a reverse_proxy frontend entry in Sophos UTM.",
		"This module needs to have the REST Ability of the UTM to be activated.",
	]

	version_added: "2.8"

	options: {
		name: {
			description: [
				"The name of the object. Will be used to identify the entry",
			]
			required: true
		}
		add_content_type_header: {
			description: [
				"Whether to add the content type header or not",
			]
			type:    "bool"
			default: false
		}
		address: {
			description: [
				"The reference name of the network/interface_address object.",
			]
			default: "REF_DefaultInternalAddress"
		}
		allowed_networks: {
			description: [
				"A list of reference names for the allowed networks.",
			]
			default: ["REF_NetworkAny"]
		}
		certificate: {
			description: [
				"The reference name of the ca/host_key_cert object.",
			]
			default: ""
		}
		comment: {
			description: [
				"An optional comment to add to the object",
			]
			default: ""
		}
		disable_compression: {
			description: [
				"Whether to enable the compression",
			]
			type:    "bool"
			default: false
		}
		domain: description: [
			"A list of domain names for the frontend object",
		]
		exceptions: {
			description: [
				"A list of exception ref names (reverse_proxy/exception)",
			]
			default: []
		}
		htmlrewrite: {
			description: [
				"Whether to enable html rewrite or not",
			]
			type:    "bool"
			default: false
		}
		htmlrewrite_cookies: {
			description: [
				"Whether to enable html rewrite cookie or not",
			]
			type:    "bool"
			default: false
		}
		implicitredirect: {
			description: [
				"Whether to enable implicit redirection or not",
			]
			type:    "bool"
			default: false
		}
		lbmethod: {
			description: [
				"Which loadbalancer method should be used",
			]
			choices: [
				"",
				"bybusyness",
				"bytraffic",
				"byrequests",
			]
			default: "bybusyness"
		}
		locations: {
			description: [
				"A list of location ref names (reverse_proxy/location)",
			]
			default: []
		}
		port: {
			description: [
				"The frontend http port",
			]
			default: 80
		}
		preservehost: {
			description: [
				"Whether to preserve host header",
			]
			type:    "bool"
			default: false
		}
		profile: {
			description: [
				"The reference string of the reverse_proxy/profile",
			]
			default: ""
		}
		status: {
			description: [
				"Whether to activate the frontend entry or not",
			]
			type:    "bool"
			default: true
		}
		type: {
			description: [
				"Which protocol should be used",
			]
			choices: [
				"http",
				"https",
			]
			default: "http"
		}
		xheaders: {
			description: [
				"Whether to pass the host header or not",
			]
			type:    "bool"
			default: false
		}
	}

	extends_documentation_fragment: ["utm"]
}
