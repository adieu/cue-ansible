package ansible

module: avi_authprofile: {
	module: "avi_authprofile"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of AuthProfile Avi RESTful Object"
	description: [
		"This module is used to configure AuthProfile object",
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
		description: description: [
			"User defined description for the object.",
		]
		http: description: [
			"Http user authentication params.",
		]
		ldap: description: [
			"Ldap server and directory settings.",
		]
		name: {
			description: [
				"Name of the auth profile.",
			]
			required: true
		}
		pa_agent_ref: {
			description: [
				"Pingaccessagent uuid.",
				"It is a reference to an object of type pingaccessagent.",
				"Field introduced in 18.2.3.",
			]
			version_added: "2.9"
		}
		saml: {
			description: [
				"Saml settings.",
				"Field introduced in 17.2.3.",
			]
			version_added: "2.5"
		}
		tacacs_plus: description: [
			"Tacacs+ settings.",
		]
		tenant_ref: description: [
			"It is a reference to an object of type tenant.",
		]
		type: {
			description: [
				"Type of the auth profile.",
				"Enum options - AUTH_PROFILE_LDAP, AUTH_PROFILE_TACACS_PLUS, AUTH_PROFILE_SAML, AUTH_PROFILE_PINGACCESS.",
			]
			required: true
		}
		url: description: [
			"Avi controller URL of the object.",
		]
		uuid: description: [
			"Uuid of the auth profile.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
