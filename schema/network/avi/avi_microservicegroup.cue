package ansible

module: avi_microservicegroup: {
	module: "avi_microservicegroup"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of MicroServiceGroup Avi RESTful Object"
	description: [
		"This module is used to configure MicroServiceGroup object",
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
		created_by: description: [
			"Creator name.",
		]
		description: description: [
			"User defined description for the object.",
		]
		name: {
			description: [
				"Name of the microservice group.",
			]
			required: true
		}
		service_refs: description: [
			"Configure microservice(es).",
			"It is a reference to an object of type microservice.",
		]
		tenant_ref: description: [
			"It is a reference to an object of type tenant.",
		]
		url: description: [
			"Avi controller URL of the object.",
		]
		uuid: description: [
			"Uuid of the microservice group.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
