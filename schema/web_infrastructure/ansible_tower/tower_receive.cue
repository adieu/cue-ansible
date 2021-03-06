package ansible

module: tower_receive: {
	module:            "tower_receive"
	author:            "John Westcott IV (@john-westcott-iv)"
	version_added:     "2.8"
	short_description: "Receive assets from Ansible Tower."
	description: [
		"Receive assets from Ansible Tower. See U(https://www.ansible.com/tower) for an overview.",
	]

	options: {
		all: {
			description: [
				"Export all assets",
			]
			type:    "bool"
			default: "False"
		}
		organization: {
			description: [
				"List of organization names to export",
			]
			default: []
		}
		user: {
			description: [
				"List of user names to export",
			]
			default: []
		}
		team: {
			description: [
				"List of team names to export",
			]
			default: []
		}
		credential_type: {
			description: [
				"List of credential type names to export",
			]
			default: []
		}
		credential: {
			description: [
				"List of credential names to export",
			]
			default: []
		}
		notification_template: {
			description: [
				"List of notification template names to export",
			]
			default: []
		}
		inventory_script: {
			description: [
				"List of inventory script names to export",
			]
			default: []
		}
		inventory: {
			description: [
				"List of inventory names to export",
			]
			default: []
		}
		project: {
			description: [
				"List of project names to export",
			]
			default: []
		}
		job_template: {
			description: [
				"List of job template names to export",
			]
			default: []
		}
		workflow: {
			description: [
				"List of workflow names to export",
			]
			default: []
		}
	}

	requirements: [
		"ansible-tower-cli >= 3.3.0",
	]

	notes: [
		"Specifying a name of \"all\" for any asset type will export all items of that asset type.",
	]

	extends_documentation_fragment: "tower"
}
