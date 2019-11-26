package ansible

module: os_user_role: {
	module:                         "os_user_role"
	short_description:              "Associate OpenStack Identity users and roles"
	extends_documentation_fragment: "openstack"
	author:                         "Monty Taylor (@emonty), David Shrewsbury (@Shrews)"
	version_added:                  "2.1"
	description: [
		"Grant and revoke roles in either project or domain context for OpenStack Identity Users.",
	]

	options: {
		role: {
			description: [
				"Name or ID for the role.",
			]
			required: true
		}
		user: description: [
			"Name or ID for the user. If I(user) is not specified, then I(group) is required. Both may not be specified.",
		]

		group: description: [
			"Name or ID for the group. Valid only with keystone version 3. If I(group) is not specified, then I(user) is required. Both may not be specified.",
		]

		project: description: [
			"Name or ID of the project to scope the role association to. If you are using keystone version 2, then this value is required.",
		]

		domain: description: [
			"Name or ID of the domain to scope the role association to. Valid only with keystone version 3, and required if I(project) is not specified.",
		]

		state: {
			description: [
				"Should the roles be present or absent on the user.",
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
