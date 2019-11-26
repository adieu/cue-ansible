package ansible

module: heroku_collaborator: {
	module:            "heroku_collaborator"
	short_description: "Add or delete app collaborators on Heroku"
	version_added:     "2.6"
	description: [
		"Manages collaborators for Heroku apps.",
		"If set to C(present) and heroku user is already collaborator, then do nothing.",
		"If set to C(present) and heroku user is not collaborator, then add user to app.",
		"If set to C(absent) and heroku user is collaborator, then delete user from app.",
	]
	author: [
		"Marcel Arns (@marns93)",
	]
	requirements: [
		"heroku3",
	]
	options: {
		api_key: description: [
			"Heroku API key",
		]
		apps: {
			description: [
				"List of Heroku App names",
			]
			required: true
		}
		suppress_invitation: {
			description: [
				"Suppress email invitation when creating collaborator",
			]
			type:    "bool"
			default: "no"
		}
		user: {
			description: [
				"User ID or e-mail",
			]
			required: true
		}
		state: {
			description: [
				"Create or remove the heroku collaborator",
			]
			choices: ["present", "absent"]
			default: "present"
		}
	}
	notes: [
		"C(HEROKU_API_KEY) and C(TF_VAR_HEROKU_API_KEY) env variable can be used instead setting C(api_key).",
		"If you use I(--check), you can also pass the I(-v) flag to see affected apps in C(msg), e.g. [\"heroku-example-app\"].",
	]
}
