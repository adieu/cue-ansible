package ansible

module: os_server_group: {
	module:                         "os_server_group"
	short_description:              "Manage OpenStack server groups"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.2"
	author:                         "Lingxian Kong (@kong)"
	description: [
		"Add or remove server groups from OpenStack.",
	]
	options: {
		state: {
			description: [
				"Indicate desired state of the resource. When I(state) is 'present', then I(policies) is required.",
			]

			choices: ["present", "absent"]
			required: false
			default:  "present"
		}
		name: {
			description: [
				"Server group name.",
			]
			required: true
		}
		policies: {
			description: [
				"A list of one or more policy names to associate with the server group. The list must contain at least one policy name. The current valid policy names are anti-affinity, affinity, soft-anti-affinity and soft-affinity.",
			]

			required: false
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
