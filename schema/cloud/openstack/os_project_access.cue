package ansible

module: os_project_access: {
	module:                         "os_project_access"
	short_description:              "Manage OpenStack compute flavors access"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.5"
	author:                         "Roberto Polli (@ioggstream)"
	description: [
		"Add or remove flavor, volume_type or other resources access from OpenStack.",
	]

	options: {
		state: {
			description: [
				"Indicate desired state of the resource.",
			]
			choices: ["present", "absent"]
			required: false
			default:  "present"
		}
		target_project_id: {
			description: [
				"Project id.",
			]
			required: true
		}
		resource_type: description: [
			"The resource type (eg. nova_flavor, cinder_volume_type).",
		]
		resource_name: description: [
			"The resource name (eg. tiny).",
		]
		availability_zone: description: [
			"The availability zone of the resource.",
		]
	}
	requirements: [
		"openstacksdk",
	]
}
