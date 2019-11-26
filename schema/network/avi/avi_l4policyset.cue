package ansible

module: avi_l4policyset: {
	module: "avi_l4policyset"
	author: "Chaitanya Deshpande (@chaitanyaavi) <chaitanya.deshpande@avinetworks.com>"

	short_description: "Module for setup of L4PolicySet Avi RESTful Object"
	description: [
		"This module is used to configure L4PolicySet object",
		"more examples at U(https://github.com/avinetworks/devops)",
	]
	requirements: ["avisdk"]
	version_added: "2.6"
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
			default: "put"
			choices: ["put", "patch"]
		}
		avi_api_patch_op: {
			description: [
				"Patch operation to use when using avi_api_update_method as patch.",
			]
			choices: ["add", "replace", "delete"]
		}
		created_by: description: [
			"Creator name.",
			"Field introduced in 17.2.7.",
		]
		description: description: [
			"Field introduced in 17.2.7.",
		]
		is_internal_policy: {
			description: [
				"Field introduced in 17.2.7.",
				"Default value when not specified in API or module is interpreted by Avi Controller as False.",
			]
			type: "bool"
		}
		l4_connection_policy: description: [
			"Policy to apply when a new transport connection is setup.",
			"Field introduced in 17.2.7.",
		]
		name: {
			description: [
				"Name of the l4 policy set.",
				"Field introduced in 17.2.7.",
			]
			required: true
		}
		tenant_ref: description: [
			"It is a reference to an object of type tenant.",
			"Field introduced in 17.2.7.",
		]
		url: description: [
			"Avi controller URL of the object.",
		]
		uuid: description: [
			"Id of the l4 policy set.",
			"Field introduced in 17.2.7.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
