package ansible

module: avi_vsdatascriptset: {
	module: "avi_vsdatascriptset"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of VSDataScriptSet Avi RESTful Object"
	description: [
		"This module is used to configure VSDataScriptSet object",
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
		created_by: {
			description: [
				"Creator name.",
				"Field introduced in 17.1.11,17.2.4.",
			]
			version_added: "2.5"
		}
		datascript: description: [
			"Datascripts to execute.",
		]
		description: description: [
			"User defined description for the object.",
		]
		ipgroup_refs: description: [
			"Uuid of ip groups that could be referred by vsdatascriptset objects.",
			"It is a reference to an object of type ipaddrgroup.",
		]
		name: {
			description: [
				"Name for the virtual service datascript collection.",
			]
			required: true
		}
		pool_group_refs: description: [
			"Uuid of pool groups that could be referred by vsdatascriptset objects.",
			"It is a reference to an object of type poolgroup.",
		]
		pool_refs: description: [
			"Uuid of pools that could be referred by vsdatascriptset objects.",
			"It is a reference to an object of type pool.",
		]
		protocol_parser_refs: {
			description: [
				"List of protocol parsers that could be referred by vsdatascriptset objects.",
				"It is a reference to an object of type protocolparser.",
				"Field introduced in 18.2.3.",
			]
			version_added: "2.9"
		}
		string_group_refs: description: [
			"Uuid of string groups that could be referred by vsdatascriptset objects.",
			"It is a reference to an object of type stringgroup.",
		]
		tenant_ref: description: [
			"It is a reference to an object of type tenant.",
		]
		url: description: [
			"Avi controller URL of the object.",
		]
		uuid: description: [
			"Uuid of the virtual service datascript collection.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
