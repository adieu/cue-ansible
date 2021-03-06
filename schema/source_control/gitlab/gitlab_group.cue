package ansible

module: gitlab_group: {
	module:            "gitlab_group"
	short_description: "Creates/updates/deletes GitLab Groups"
	description: [
		"When the group does not exist in GitLab, it will be created.",
		"When the group does exist and state=absent, the group will be deleted.",
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
		name: {
			description: [
				"Name of the group you want to create.",
			]
			required: true
			type:     "str"
		}
		path: {
			description: [
				"The path of the group you want to create, this will be api_url/group_path",
				"If not supplied, the group_name will be used.",
			]
			type: "str"
		}
		description: {
			description: [
				"A description for the group.",
			]
			version_added: "2.7"
			type:          "str"
		}
		state: {
			description: [
				"create or delete group.",
				"Possible values are present and absent.",
			]
			default: "present"
			type:    "str"
			choices: ["present", "absent"]
		}
		parent: {
			description: [
				"Allow to create subgroups",
				"Id or Full path of parent group in the form of group/name",
			]
			version_added: "2.8"
			type:          "str"
		}
		visibility: {
			description: [
				"Default visibility of the group",
			]
			version_added: "2.8"
			choices: ["private", "internal", "public"]
			default: "private"
			type:    "str"
		}
	}
}
