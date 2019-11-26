package ansible

module: os_user: {
	module:                         "os_user"
	short_description:              "Manage OpenStack Identity Users"
	extends_documentation_fragment: "openstack"
	author:                         "David Shrewsbury (@Shrews)"
	version_added:                  "2.0"
	description: [
		"Manage OpenStack Identity users. Users can be created, updated or deleted using this module. A user will be updated if I(name) matches an existing user and I(state) is present. The value for I(name) cannot be updated without deleting and re-creating the user.",
	]

	options: {
		name: {
			description: [
				"Username for the user",
			]
			required: true
		}
		password: description: [
			"Password for the user",
		]
		update_password: {
			required: false
			choices: ["always", "on_create"]
			version_added: "2.3"
			description: [
				"C(always) will attempt to update password.  C(on_create) will only set the password for newly created users.",
			]
		}

		email: description: [
			"Email address for the user",
		]
		description: {
			description: [
				"Description about the user",
			]
			version_added: "2.4"
		}
		default_project: description: [
			"Project name or ID that the user should be associated with by default",
		]
		domain: description: [
			"Domain to create the user in if the cloud supports domains",
		]
		enabled: {
			description: [
				"Is the user enabled",
			]
			type:    "bool"
			default: "yes"
		}
		state: {
			description: [
				"Should the resource be present or absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		availability_zone: description: [
			"Ignored. Present for backwards compatibility",
		]
	}
	requirements: [
		"python >= 2.7",
		"openstacksdk",
	]
}
