package ansible

module: avi_httppolicyset: {
	module: "avi_httppolicyset"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of HTTPPolicySet Avi RESTful Object"
	description: [
		"This module is used to configure HTTPPolicySet object",
		"more examples at U(https://github.com/avinetworks/devops)",
	]
	requirements: ["avisdk"]
	version_added: "2.4"
	options: {
		state: {
			description: [
				"The state that should be applied on the entity.",
			]
			default: "present"
			choices: ["absent", "present"]
		}
		avi_api_update_method: {
			description: [
				"Default method for object update is HTTP PUT.",
				"Setting to patch will override that behavior to use HTTP PATCH.",
			]
			version_added: "2.5"
			default:       "put"
			choices: ["put", "patch"]
		}
		avi_api_patch_op: {
			description: [
				"Patch operation to use when using avi_api_update_method as patch.",
			]
			version_added: "2.5"
			choices: ["add", "replace", "delete"]
		}
		cloud_config_cksum: description: [
			"Checksum of cloud configuration for pool.",
			"Internally set by cloud connector.",
		]
		created_by: description: [
			"Creator name.",
		]
		description: description: [
			"User defined description for the object.",
		]
		http_request_policy: description: [
			"Http request policy for the virtual service.",
		]
		http_response_policy: description: [
			"Http response policy for the virtual service.",
		]
		http_security_policy: description: [
			"Http security policy for the virtual service.",
		]
		is_internal_policy: {
			description: [
				"Boolean flag to set is_internal_policy.",
				"Default value when not specified in API or module is interpreted by Avi Controller as False.",
			]
			type: "bool"
		}
		name: {
			description: [
				"Name of the http policy set.",
			]
			required: true
		}
		tenant_ref: description: [
			"It is a reference to an object of type tenant.",
		]
		url: description: [
			"Avi controller URL of the object.",
		]
		uuid: description: [
			"Uuid of the http policy set.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
