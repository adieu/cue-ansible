package ansible

module: avi_alertemailconfig: {
	module: "avi_alertemailconfig"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of AlertEmailConfig Avi RESTful Object"
	description: [
		"This module is used to configure AlertEmailConfig object",
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
		cc_emails: description: [
			"Alerts are copied to the comma separated list of  email recipients.",
		]
		description: description: [
			"User defined description for the object.",
		]
		name: {
			description: [
				"A user-friendly name of the email notification service.",
			]
			required: true
		}
		tenant_ref: description: [
			"It is a reference to an object of type tenant.",
		]
		to_emails: {
			description: [
				"Alerts are sent to the comma separated list of  email recipients.",
			]
			required: true
		}
		url: description: [
			"Avi controller URL of the object.",
		]
		uuid: description: [
			"Unique object identifier of the object.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
