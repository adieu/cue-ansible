package ansible

module: gitlab_project_variable: {
	module:            "gitlab_project_variable"
	short_description: "Creates/updates/deletes GitLab Projects Variables"
	description: [
		"When a project variable does not exist, it will be created.",
		"When a project variable does exist, its value will be updated when the values are different.",
		"Variables which are untouched in the playbook, but are not untouched in the GitLab project, they stay untouched (I(purge) is C(false)) or will be deleted (I(purge) is C(true)).",
	]

	version_added: "2.9"
	author: [
		"Markus Bergholz (@markuman)",
	]
	requirements: [
		"python >= 2.7",
		"python-gitlab python module",
	]
	extends_documentation_fragment: [
		"auth_basic",
	]
	options: {
		state: {
			description: [
				"Create or delete project variable.",
				"Possible values are present and absent.",
			]
			default: "present"
			type:    "str"
			choices: ["present", "absent"]
		}
		api_token: {
			description: [
				"GitLab access token with API permissions.",
			]
			required: true
			type:     "str"
		}
		project: {
			description: [
				"The path and name of the project.",
			]
			required: true
			type:     "str"
		}
		purge: {
			description: [
				"When set to true, all variables which are not untouched in the task will be deleted.",
			]
			default: false
			type:    "bool"
		}
		vars: {
			description: [
				"A list of key value pairs.",
			]
			default: {}
			type: "dict"
		}
	}
}
