package ansible

module: gitlab_project: {
	module:            "gitlab_project"
	short_description: "Creates/updates/deletes GitLab Projects"
	description: [
		"When the project does not exist in GitLab, it will be created.",
		"When the project does exists and state=absent, the project will be deleted.",
		"When changes are made to the project, the project will be updated.",
	]
	version_added: "2.1"
	author: [
		"Werner Dijkerman (@dj-wasabi)",
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
			type: "str"
		}
		group: {
			description: [
				"Id or The full path of the group of which this projects belongs to.",
			]
			type: "str"
		}
		name: {
			description: [
				"The name of the project",
			]
			required: true
			type:     "str"
		}
		path: {
			description: [
				"The path of the project you want to create, this will be server_url/<group>/path.",
				"If not supplied, name will be used.",
			]
			type: "str"
		}
		description: {
			description: [
				"An description for the project.",
			]
			type: "str"
		}
		issues_enabled: {
			description: [
				"Whether you want to create issues or not.",
				"Possible values are true and false.",
			]
			type:    "bool"
			default: true
		}
		merge_requests_enabled: {
			description: [
				"If merge requests can be made or not.",
				"Possible values are true and false.",
			]
			type:    "bool"
			default: true
		}
		wiki_enabled: {
			description: [
				"If an wiki for this project should be available or not.",
				"Possible values are true and false.",
			]
			type:    "bool"
			default: true
		}
		snippets_enabled: {
			description: [
				"If creating snippets should be available or not.",
				"Possible values are true and false.",
			]
			type:    "bool"
			default: true
		}
		visibility: {
			description: [
				"Private. Project access must be granted explicitly for each user.",
				"Internal. The project can be cloned by any logged in user.",
				"Public. The project can be cloned without any authentication.",
			]
			default: "private"
			type:    "str"
			choices: ["private", "internal", "public"]
			aliases: [
				"visibility_level",
			]
		}
		import_url: {
			description: [
				"Git repository which will be imported into gitlab.",
				"GitLab server needs read access to this git repository.",
			]
			required: false
			type:     "str"
		}
		state: {
			description: [
				"create or delete project.",
				"Possible values are present and absent.",
			]
			default: "present"
			type:    "str"
			choices: ["present", "absent"]
		}
	}
}
