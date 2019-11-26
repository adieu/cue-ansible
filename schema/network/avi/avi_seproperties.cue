package ansible

module: avi_seproperties: {
	module: "avi_seproperties"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of SeProperties Avi RESTful Object"
	description: [
		"This module is used to configure SeProperties object",
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
		se_agent_properties: description: [
			"Seagentproperties settings for seproperties.",
		]
		se_bootup_properties: description: [
			"Sebootupproperties settings for seproperties.",
		]
		se_runtime_properties: description: [
			"Seruntimeproperties settings for seproperties.",
		]
		url: description: [
			"Avi controller URL of the object.",
		]
		uuid: description: [
			"Unique object identifier of the object.",
			"Default value when not specified in API or module is interpreted by Avi Controller as default.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
