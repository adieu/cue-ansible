package ansible

module: avi_networkprofile: {
	module: "avi_networkprofile"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of NetworkProfile Avi RESTful Object"
	description: [
		"This module is used to configure NetworkProfile object",
		"more examples at U(https://github.com/avinetworks/devops)",
	]
	requirements: ["avisdk"]
	version_added: "2.3"
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
		connection_mirror: {
			description: [
				"When enabled, avi mirrors all tcp fastpath connections to standby.",
				"Applicable only in legacy ha mode.",
				"Field introduced in 18.1.3,18.2.1.",
				"Default value when not specified in API or module is interpreted by Avi Controller as False.",
			]
			version_added: "2.9"
			type:          "bool"
		}
		description: description: [
			"User defined description for the object.",
		]
		name: {
			description: [
				"The name of the network profile.",
			]
			required: true
		}
		profile: {
			description: [
				"Networkprofileunion settings for networkprofile.",
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
			"Uuid of the network profile.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
