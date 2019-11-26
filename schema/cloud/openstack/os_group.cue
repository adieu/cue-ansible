package ansible

module: os_group: {
	module:                         "os_group"
	short_description:              "Manage OpenStack Identity Groups"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.1"
	author:                         "Monty Taylor (@emonty), David Shrewsbury (@Shrews)"
	description: [
		"Manage OpenStack Identity Groups. Groups can be created, deleted or updated. Only the I(description) value can be updated.",
	]

	options: {
		name: {
			description: [
				"Group name",
			]
			required: true
		}
		description: description: [
			"Group description",
		]
		domain_id: {
			description: [
				"Domain id to create the group in if the cloud supports domains.",
			]
			version_added: "2.3"
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
