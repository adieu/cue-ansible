package ansible

module: rundeck_project: {
	module: "rundeck_project"

	short_description: "Manage Rundeck projects."
	description: [
		"Create and remove Rundeck projects through HTTP API.",
	]
	version_added: "2.4"
	author:        "Loic Blot (@nerzhul)"
	options: {
		state: {
			description: [
				"Create or remove Rundeck project.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		name: {
			description: [
				"Sets the project name.",
			]
			required: true
		}
		url: {
			description: [
				"Sets the rundeck instance URL.",
			]
			required: true
		}
		api_version: {
			description: [
				"Sets the API version used by module.",
				"API version must be at least 14.",
			]
			default: 14
		}
		token: {
			description: [
				"Sets the token to authenticate against Rundeck API.",
			]
			required: true
		}
	}
}
