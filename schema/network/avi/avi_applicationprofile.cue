package ansible

module: avi_applicationprofile: {
	module: "avi_applicationprofile"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of ApplicationProfile Avi RESTful Object"
	description: [
		"This module is used to configure ApplicationProfile object",
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
		cloud_config_cksum: {
			description: [
				"Checksum of application profiles.",
				"Internally set by cloud connector.",
				"Field introduced in 17.2.14, 18.1.5, 18.2.1.",
			]
			version_added: "2.9"
		}
		created_by: {
			description: [
				"Name of the application profile creator.",
				"Field introduced in 17.2.14, 18.1.5, 18.2.1.",
			]
			version_added: "2.9"
		}
		description: description: [
			"User defined description for the object.",
		]
		dns_service_profile: description: [
			"Specifies various dns service related controls for virtual service.",
		]
		dos_rl_profile: description: [
			"Specifies various security related controls for virtual service.",
		]
		http_profile: description: [
			"Specifies the http application proxy profile parameters.",
		]
		name: {
			description: [
				"The name of the application profile.",
			]
			required: true
		}
		preserve_client_ip: {
			description: [
				"Specifies if client ip needs to be preserved for backend connection.",
				"Not compatible with connection multiplexing.",
				"Default value when not specified in API or module is interpreted by Avi Controller as False.",
			]
			type: "bool"
		}
		preserve_client_port: {
			description: [
				"Specifies if we need to preserve client port while preserving client ip for backend connections.",
				"Field introduced in 17.2.7.",
				"Default value when not specified in API or module is interpreted by Avi Controller as False.",
			]
			version_added: "2.6"
			type:          "bool"
		}
		sip_service_profile: {
			description: [
				"Specifies various sip service related controls for virtual service.",
				"Field introduced in 17.2.8, 18.1.3, 18.2.1.",
			]
			version_added: "2.9"
		}
		tcp_app_profile: description: [
			"Specifies the tcp application proxy profile parameters.",
		]
		tenant_ref: description: [
			"It is a reference to an object of type tenant.",
		]
		type: {
			description: [
				"Specifies which application layer proxy is enabled for the virtual service.",
				"Enum options - APPLICATION_PROFILE_TYPE_L4, APPLICATION_PROFILE_TYPE_HTTP, APPLICATION_PROFILE_TYPE_SYSLOG, APPLICATION_PROFILE_TYPE_DNS,",
				"APPLICATION_PROFILE_TYPE_SSL, APPLICATION_PROFILE_TYPE_SIP.",
			]
			required: true
		}
		url: description: [
			"Avi controller URL of the object.",
		]
		uuid: description: [
			"Uuid of the application profile.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
