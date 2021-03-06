package ansible

module: avi_prioritylabels: {
	module: "avi_prioritylabels"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of PriorityLabels Avi RESTful Object"
	description: [
		"This module is used to configure PriorityLabels object",
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
		cloud_ref: description: [
			"It is a reference to an object of type cloud.",
		]
		description: description: [
			"A description of the priority labels.",
		]
		equivalent_labels: description: [
			"Equivalent priority labels in descending order.",
		]
		name: {
			description: [
				"The name of the priority labels.",
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
			"Uuid of the priority labels.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
