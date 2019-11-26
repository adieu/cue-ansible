package ansible

module: os_project: {
	module:                         "os_project"
	short_description:              "Manage OpenStack Projects"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.0"
	author:                         "Alberto Gireud (@agireud)"
	description: [
		"Manage OpenStack Projects. Projects can be created, updated or deleted using this module. A project will be updated if I(name) matches an existing project and I(state) is present. The value for I(name) cannot be updated without deleting and re-creating the project.",
	]

	options: {
		name: {
			description: [
				"Name for the project",
			]
			required: true
		}
		description: description: [
			"Description for the project",
		]
		domain_id: {
			description: [
				"Domain id to create the project in if the cloud supports domains.",
			]
			aliases: ["domain"]
		}
		enabled: {
			description: [
				"Is the project enabled",
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
