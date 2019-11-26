package ansible

module: avi_vrfcontext: {
	module: "avi_vrfcontext"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of VrfContext Avi RESTful Object"
	description: [
		"This module is used to configure VrfContext object",
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
		bgp_profile: description: [
			"Bgp local and peer info.",
		]
		cloud_ref: description: [
			"It is a reference to an object of type cloud.",
		]
		debugvrfcontext: description: [
			"Configure debug flags for vrf.",
			"Field introduced in 17.1.1.",
		]
		description: description: [
			"User defined description for the object.",
		]
		gateway_mon: description: [
			"Configure ping based heartbeat check for gateway in service engines of vrf.",
		]
		internal_gateway_monitor: description: [
			"Configure ping based heartbeat check for all default gateways in service engines of vrf.",
			"Field introduced in 17.1.1.",
		]
		name: {
			description: [
				"Name of the object.",
			]
			required: true
		}
		static_routes: description: [
			"List of staticroute.",
		]
		system_default: {
			description: [
				"Boolean flag to set system_default.",
				"Default value when not specified in API or module is interpreted by Avi Controller as False.",
			]
			type: "bool"
		}
		tenant_ref: description: [
			"It is a reference to an object of type tenant.",
		]
		url: description: [
			"Avi controller URL of the object.",
		]
		uuid: description: [
			"Unique object identifier of the object.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
