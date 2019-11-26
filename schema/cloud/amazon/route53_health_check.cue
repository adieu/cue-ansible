package ansible

module: route53_health_check: {
	module:            "route53_health_check"
	short_description: "Add or delete health-checks in Amazons Route53 DNS service"
	description: [
		"Creates and deletes DNS Health checks in Amazons Route53 service.",
		"Only the port, resource_path, string_match and request_interval are considered when updating existing health-checks.",
	]

	version_added: "2.0"
	options: {
		state: {
			description: [
				"Specifies the action to take.",
			]
			required: true
			choices: ["present", "absent"]
			type:    "str"
			default: "present"
		}
		ip_address: {
			description: [
				"IP address of the end-point to check. Either this or I(fqdn) has to be provided.",
			]
			type: "str"
		}
		port: {
			description: [
				"The port on the endpoint on which you want Amazon Route 53 to perform health checks. Required for TCP checks.",
			]

			type: "int"
		}
		type: {
			description: [
				"The type of health check that you want to create, which indicates how Amazon Route 53 determines whether an endpoint is healthy.",
			]

			required: true
			choices: ["HTTP", "HTTPS", "HTTP_STR_MATCH", "HTTPS_STR_MATCH", "TCP"]
			type: "str"
		}
		resource_path: {
			description: [
				"The path that you want Amazon Route 53 to request when performing health checks. The path can be any value for which your endpoint will return an HTTP status code of 2xx or 3xx when the endpoint is healthy, for example the file /docs/route53-health-check.html.",
				"Required for all checks except TCP.",
				"The path must begin with a /",
				"Maximum 255 characters.",
			]
			type: "str"
		}
		fqdn: {
			description: [
				"Domain name of the endpoint to check. Either this or I(ip_address) has to be provided. When both are given the `fqdn` is used in the `Host:` header of the HTTP request.",
			]

			type: "str"
		}
		string_match: {
			description: [
				"If the check type is HTTP_STR_MATCH or HTTP_STR_MATCH, the string that you want Amazon Route 53 to search for in the response body from the specified resource. If the string appears in the first 5120 bytes of the response body, Amazon Route 53 considers the resource healthy.",
			]

			type: "str"
		}
		request_interval: {
			description: [
				"The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health-check request.",
			]

			required: true
			default:  30
			choices: [10, 30]
			type: "int"
		}
		failure_threshold: {
			description: [
				"The number of consecutive health checks that an endpoint must pass or fail for Amazon Route 53 to change the current status of the endpoint from unhealthy to healthy or vice versa.",
			]

			required: true
			default:  3
			choices: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
			type: "int"
		}
	}
	author: "zimbatm (@zimbatm)"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
