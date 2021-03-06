package ansible

module: avi_api_session: {
	module: "avi_api_session"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Avi API Module"
	description: [
		"This module can be used for calling any resources defined in Avi REST API. U(https://avinetworks.com/)",
		"This module is useful for invoking HTTP Patch methods and accessing resources that do not have an REST object associated with them.",
	]
	version_added: 2.3
	requirements: ["avisdk"]
	options: {
		http_method: {
			description: [
				"Allowed HTTP methods for RESTful services and are supported by Avi Controller.",
			]
			choices: ["get", "put", "post", "patch", "delete"]
			required: true
		}
		data: description: [
			"HTTP body in YAML or JSON format.",
		]
		params: description: [
			"Query parameters passed to the HTTP API.",
		]
		path: description: [
			"Path for Avi API resource. For example, C(path: virtualservice) will translate to C(api/virtualserivce).",
		]
		timeout: {
			description: [
				"Timeout (in seconds) for Avi API calls.",
			]
			default: 60
		}
	}
	extends_documentation_fragment: ["avi"]
}
