package ansible

module: gitlab_deploy_key: {
	module:            "gitlab_deploy_key"
	short_description: "Manages GitLab project deploy keys."
	description: [
		"Adds, updates and removes project deploy keys",
	]
	version_added: "2.6"
	author: [
		"Marcus Watkins (@marwatk)",
		"Guillaume Martinez (@Lunik)",
	]
	requirements: [
		"python >= 2.7",
		"python-gitlab python module",
	]
	extends_documentation_fragment: [
		"auth_basic",
	]
	options: {
		api_token: {
			description: [
				"GitLab token for logging in.",
			]
			version_added: "2.8"
			type:          "str"
		}
		project: {
			description: [
				"Id or Full path of project in the form of group/name.",
			]
			required: true
			type:     "str"
		}
		title: {
			description: [
				"Deploy key's title.",
			]
			required: true
			type:     "str"
		}
		key: {
			description: [
				"Deploy key",
			]
			required: true
			type:     "str"
		}
		can_push: {
			description: [
				"Whether this key can push to the project.",
			]
			type:    "bool"
			default: false
		}
		state: {
			description: [
				"When C(present) the deploy key added to the project if it doesn't exist.",
				"When C(absent) it will be removed from the project if it exists.",
			]
			required: true
			default:  "present"
			type:     "str"
			choices: ["present", "absent"]
		}
	}
}
