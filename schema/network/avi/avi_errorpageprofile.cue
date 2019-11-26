package ansible

module: avi_errorpageprofile: {
	module: "avi_errorpageprofile"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of ErrorPageProfile Avi RESTful Object"
	description: [
		"This module is used to configure ErrorPageProfile object",
		"more examples at U(https://github.com/avinetworks/devops)",
	]
	requirements: ["avisdk"]
	version_added: "2.5"
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
		app_name: description: [
			"Name of the virtual service which generated the error page.",
			"Field deprecated in 18.1.1.",
			"Field introduced in 17.2.4.",
			"Default value when not specified in API or module is interpreted by Avi Controller as VS Name.",
		]
		company_name: description: [
			"Name of the company to show in error page.",
			"Field deprecated in 18.1.1.",
			"Field introduced in 17.2.4.",
			"Default value when not specified in API or module is interpreted by Avi Controller as Avi Networks.",
		]
		error_pages: description: [
			"Defined error pages for http status codes.",
			"Field introduced in 17.2.4.",
		]
		host_name: description: [
			"Fully qualified domain name for which the error page is generated.",
			"Field deprecated in 18.1.1.",
			"Field introduced in 17.2.4.",
			"Default value when not specified in API or module is interpreted by Avi Controller as Host Header.",
		]
		name: {
			description: [
				"Field introduced in 17.2.4.",
			]
			required: true
		}
		tenant_ref: description: [
			"It is a reference to an object of type tenant.",
			"Field introduced in 17.2.4.",
		]
		url: description: [
			"Avi controller URL of the object.",
		]
		uuid: description: [
			"Field introduced in 17.2.4.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
