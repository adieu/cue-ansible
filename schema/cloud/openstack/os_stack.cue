package ansible

module: os_stack: {
	module:                         "os_stack"
	short_description:              "Add/Remove Heat Stack"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.2"
	author: [
		"Mathieu Bultel (@matbu)",
		"Steve Baker (@steveb)",
	]
	description: [
		"Add or Remove a Stack to an OpenStack Heat",
	]
	options: {
		state: {
			description: [
				"Indicate desired state of the resource",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		name: {
			description: [
				"Name of the stack that should be created, name could be char and digit, no space",
			]
			required: true
		}
		tag: {
			description: [
				"Tag for the stack that should be created, name could be char and digit, no space",
			]
			version_added: "2.5"
		}
		template: description: [
			"Path of the template file to use for the stack creation",
		]
		environment: description: [
			"List of environment files that should be used for the stack creation",
		]
		parameters: description: [
			"Dictionary of parameters for the stack creation",
		]
		rollback: {
			description: [
				"Rollback stack creation",
			]
			type:    "bool"
			default: "yes"
		}
		timeout: {
			description: [
				"Maximum number of seconds to wait for the stack creation",
			]
			default: 3600
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
