package ansible

module: tower_user: {
	module:            "tower_user"
	author:            "Wayne Witzel III (@wwitzel3)"
	version_added:     "2.3"
	short_description: "create, update, or destroy Ansible Tower user."
	description: [
		"Create, update, or destroy Ansible Tower users. See U(https://www.ansible.com/tower) for an overview.",
	]

	options: {
		username: {
			description: [
				"The username of the user.",
			]
			required: true
		}
		first_name: description: [
			"First name of the user.",
		]
		last_name: description: [
			"Last name of the user.",
		]
		email: {
			description: [
				"Email address of the user.",
			]
			required: true
		}
		password: description: [
			"Password of the user.",
		]
		superuser: {
			description: [
				"User is a system wide administrator.",
			]
			type:    "bool"
			default: "no"
		}
		auditor: {
			description: [
				"User is a system wide auditor.",
			]
			type:    "bool"
			default: "no"
		}
		state: {
			description: [
				"Desired state of the resource.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}

	requirements: [
		"ansible-tower-cli >= 3.2.0",
	]

	extends_documentation_fragment: "tower"
}
