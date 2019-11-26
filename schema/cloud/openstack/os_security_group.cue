package ansible

module: os_security_group: {
	module:                         "os_security_group"
	short_description:              "Add/Delete security groups from an OpenStack cloud."
	extends_documentation_fragment: "openstack"
	author:                         "Monty Taylor (@emonty)"
	version_added:                  "2.0"
	description: [
		"Add or Remove security groups from an OpenStack cloud.",
	]
	options: {
		name: {
			description: [
				"Name that has to be given to the security group. This module requires that security group names be unique.",
			]

			required: true
		}
		description: description: [
			"Long description of the purpose of the security group",
		]
		state: {
			description: [
				"Should the resource be present or absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		project: {
			description: [
				"Unique name or ID of the project.",
			]
			required:      false
			version_added: "2.7"
		}
		availability_zone: description: ["Ignored. Present for backwards compatibility"]
	}
}
