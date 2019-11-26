package ansible

module: avi_applicationpersistenceprofile: {
	module: "avi_applicationpersistenceprofile"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of ApplicationPersistenceProfile Avi RESTful Object"
	description: [
		"This module is used to configure ApplicationPersistenceProfile object",
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
		app_cookie_persistence_profile: description: [
			"Specifies the application cookie persistence profile parameters.",
		]
		description: description: [
			"User defined description for the object.",
		]
		hdr_persistence_profile: description: [
			"Specifies the custom http header persistence profile parameters.",
		]
		http_cookie_persistence_profile: description: [
			"Specifies the http cookie persistence profile parameters.",
		]
		ip_persistence_profile: description: [
			"Specifies the client ip persistence profile parameters.",
		]
		is_federated: {
			description: [
				"This field describes the object's replication scope.",
				"If the field is set to false, then the object is visible within the controller-cluster and its associated service-engines.",
				"If the field is set to true, then the object is replicated across the federation.",
				"Field introduced in 17.1.3.",
				"Default value when not specified in API or module is interpreted by Avi Controller as False.",
			]
			version_added: "2.4"
			type:          "bool"
		}
		name: {
			description: [
				"A user-friendly name for the persistence profile.",
			]
			required: true
		}
		persistence_type: {
			description: [
				"Method used to persist clients to the same server for a duration of time or a session.",
				"Enum options - PERSISTENCE_TYPE_CLIENT_IP_ADDRESS, PERSISTENCE_TYPE_HTTP_COOKIE, PERSISTENCE_TYPE_TLS, PERSISTENCE_TYPE_CLIENT_IPV6_ADDRESS,",
				"PERSISTENCE_TYPE_CUSTOM_HTTP_HEADER, PERSISTENCE_TYPE_APP_COOKIE, PERSISTENCE_TYPE_GSLB_SITE.",
				"Default value when not specified in API or module is interpreted by Avi Controller as PERSISTENCE_TYPE_CLIENT_IP_ADDRESS.",
			]
			required: true
		}
		server_hm_down_recovery: description: [
			"Specifies behavior when a persistent server has been marked down by a health monitor.",
			"Enum options - HM_DOWN_PICK_NEW_SERVER, HM_DOWN_ABORT_CONNECTION, HM_DOWN_CONTINUE_PERSISTENT_SERVER.",
			"Default value when not specified in API or module is interpreted by Avi Controller as HM_DOWN_PICK_NEW_SERVER.",
		]
		tenant_ref: description: [
			"It is a reference to an object of type tenant.",
		]
		url: description: [
			"Avi controller URL of the object.",
		]
		uuid: description: [
			"Uuid of the persistence profile.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
