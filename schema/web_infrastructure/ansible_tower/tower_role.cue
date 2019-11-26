package ansible

module: tower_role: {
	module:            "tower_role"
	version_added:     "2.3"
	author:            "Wayne Witzel III (@wwitzel3)"
	short_description: "create, update, or destroy Ansible Tower role."
	description: [
		"Create, update, or destroy Ansible Tower roles. See U(https://www.ansible.com/tower) for an overview.",
	]

	options: {
		user: description: [
			"User that receives the permissions specified by the role.",
		]
		team: description: [
			"Team that receives the permissions specified by the role.",
		]
		role: {
			description: [
				"The role type to grant/revoke.",
			]
			required: true
			choices: [
				"admin",
				"read",
				"member",
				"execute",
				"adhoc",
				"update",
				"use",
				"auditor",
				"project_admin",
				"inventory_admin",
				"credential_admin",
				"workflow_admin",
				"notification_admin",
				"job_template_admin",
			]
		}
		target_team: description: [
			"Team that the role acts on.",
		]
		inventory: description: [
			"Inventory the role acts on.",
		]
		job_template: description: [
			"The job template the role acts on.",
		]
		credential: description: [
			"Credential the role acts on.",
		]
		organization: description: [
			"Organization the role acts on.",
		]
		project: description: [
			"Project the role acts on.",
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
