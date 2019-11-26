package ansible

module: tower_team: {
	module:            "tower_team"
	author:            "Wayne Witzel III (@wwitzel3)"
	version_added:     "2.3"
	short_description: "create, update, or destroy Ansible Tower team."
	description: [
		"Create, update, or destroy Ansible Tower teams. See U(https://www.ansible.com/tower) for an overview.",
	]

	options: {
		name: {
			description: [
				"Name to use for the team.",
			]
			required: true
		}
		organization: {
			description: [
				"Organization the team should be made a member of.",
			]
			required: true
		}
		state: {
			description: [
				"Desired state of the resource.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
	}
	extends_documentation_fragment: "tower"
}
