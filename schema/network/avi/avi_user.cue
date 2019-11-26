package ansible

module: avi_user: {
	module:            "avi_user"
	author:            "Shrikant Chaudhari (@gitshrikant) <shrikant.chaudhari@avinetworks.com>"
	short_description: "Avi User Module"
	description: [
		"This module can be used for creation, updation and deletion of a user.",
	]
	version_added: 2.9
	requirements: ["avisdk"]
	options: {
		state: {
			description: [
				"The state that should be applied on the entity.",
			]
			default: "present"
			choices: ["absent", "present"]
			type: "str"
		}
		name: {
			description: [
				"Full name of the user.",
			]
			required: true
			type:     "str"
		}
		obj_username: {
			description: [
				"Name that the user will supply when signing into Avi Vantage, such as jdoe or jdoe@avinetworks.com.",
			]
			required: true
			type:     "str"
		}
		obj_password: {
			description: [
				"You may either enter a case-sensitive password in this field for the new or existing user.",
			]
			required: true
			type:     "str"
		}
		email: {
			description: [
				"Email address of the user. This field is used when a user loses their password and requests to have it reset. See Password Recovery.",
			]
			type: "str"
		}
		access: {
			description: [
				"Access settings (write, read, or no access) for each type of resource within Vantage.",
			]
			type: "list"
		}
		is_superuser: {
			description: [
				"If the user will need to have the same privileges as the admin account, set it to true.",
			]
			type: "bool"
		}
		is_active: {
			description: [
				"Activates the current user account.",
			]
			type: "bool"
		}
		avi_api_update_method: {
			description: [
				"Default method for object update is HTTP PUT.",
				"Setting to patch will override that behavior to use HTTP PATCH.",
			]
			default: "put"
			choices: ["post", "put", "patch"]
			type: "str"
		}
		avi_api_patch_op: {
			description: [
				"Patch operation to use when using avi_api_update_method as patch.",
			]
			choices: ["add", "replace", "delete"]
			type: "str"
		}
		user_profile_ref: {
			description: [
				"Refer user profile.",
				"This can also be full URI same as it comes in response payload",
			]
			type: "str"
		}
		default_tenant_ref: {
			description: [
				"Default tenant reference.",
				"This can also be full URI same as it comes in response payload",
			]
			default: "/api/tenant?name=admin"
			type:    "str"
		}
	}

	extends_documentation_fragment: ["avi"]
}
