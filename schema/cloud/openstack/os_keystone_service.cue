package ansible

module: os_keystone_service: {
	module:                         "os_keystone_service"
	short_description:              "Manage OpenStack Identity services"
	extends_documentation_fragment: "openstack"
	author:                         "Sam Yaple (@SamYaple)"
	version_added:                  "2.2"
	description: [
		"Create, update, or delete OpenStack Identity service. If a service with the supplied name already exists, it will be updated with the new description and enabled attributes.",
	]

	options: {
		name: {
			description: [
				"Name of the service",
			]
			required: true
		}
		description: description: [
			"Description of the service",
		]
		enabled: {
			description: [
				"Is the service enabled",
			]
			type:    "bool"
			default: "yes"
		}
		service_type: {
			description: [
				"The type of service",
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
		availability_zone: description: [
			"Ignored. Present for backwards compatibility",
		]
	}
	requirements: [
		"python >= 2.7",
		"openstacksdk",
	]
}
