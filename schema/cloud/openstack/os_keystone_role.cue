package ansible

module: os_keystone_role: {
	module:                         "os_keystone_role"
	short_description:              "Manage OpenStack Identity Roles"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.1"
	author: [
		"Monty Taylor (@emonty)",
		"David Shrewsbury (@Shrews)",
	]
	description: [
		"Manage OpenStack Identity Roles.",
	]
	options: {
		name: {
			description: [
				"Role Name",
			]
			required: true
		}
		state: {
			description: [
				"Should the resource be present or absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		availability_zone: {
			description: [
				"Ignored. Present for backwards compatibility",
			]
			required: false
		}
	}
	requirements: [
		"python >= 2.7",
		"openstacksdk",
	]
}
