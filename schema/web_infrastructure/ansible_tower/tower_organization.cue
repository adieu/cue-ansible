package ansible

module: tower_organization: {
	module:            "tower_organization"
	version_added:     "2.3"
	author:            "Wayne Witzel III (@wwitzel3)"
	short_description: "create, update, or destroy Ansible Tower organizations"
	description: [
		"Create, update, or destroy Ansible Tower organizations. See U(https://www.ansible.com/tower) for an overview.",
	]

	options: {
		name: {
			description: [
				"Name to use for the organization.",
			]
			required: true
		}
		description: description: [
			"The description to use for the organization.",
		]
		state: {
			description: [
				"Desired state of the resource.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "tower"
}
