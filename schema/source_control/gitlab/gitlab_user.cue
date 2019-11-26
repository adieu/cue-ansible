package ansible

module: gitlab_user: {
	module:            "gitlab_user"
	short_description: "Creates/updates/deletes GitLab Users"
	description: [
		"When the user does not exist in GitLab, it will be created.",
		"When the user does exists and state=absent, the user will be deleted.",
		"When changes are made to user, the user will be updated.",
	]
	notes: [
		"From Ansible 2.10 and onwards, name, email and password are optional while deleting the user.",
	]
	version_added: "2.1"
	author: [
		"Werner Dijkerman (@dj-wasabi)",
		"Guillaume Martinez (@Lunik)",
	]
	requirements: [
		"python >= 2.7",
		"python-gitlab python module",
		"administrator rights on the GitLab server",
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
				"Name of the user you want to create.",
				"Required only if C(state) is set to C(present).",
			]
			type: "str"
		}
		username: {
			description: [
				"The username of the user.",
			]
			required: true
			type:     "str"
		}
		password: {
			description: [
				"The password of the user.",
				"GitLab server enforces minimum password length to 8, set this value with 8 or more characters.",
				"Required only if C(state) is set to C(present).",
			]
			type: "str"
		}
		email: {
			description: [
				"The email that belongs to the user.",
				"Required only if C(state) is set to C(present).",
			]
			type: "str"
		}
		sshkey_name: {
			description: [
				"The name of the sshkey",
			]
			type: "str"
		}
		sshkey_file: {
			description: [
				"The ssh key itself.",
			]
			type: "str"
		}
		group: {
			description: [
				"Id or Full path of parent group in the form of group/name.",
				"Add user as an member to this group.",
			]
			type: "str"
		}
		access_level: {
			description: [
				"The access level to the group. One of the following can be used.",
				"guest",
				"reporter",
				"developer",
				"master (alias for maintainer)",
				"maintainer",
				"owner",
			]
			default: "guest"
			type:    "str"
			choices: ["guest", "reporter", "developer", "master", "maintainer", "owner"]
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
		confirm: {
			description: [
				"Require confirmation.",
			]
			type:          "bool"
			default:       true
			version_added: "2.4"
		}
		isadmin: {
			description: [
				"Grant admin privileges to the user.",
			]
			type:          "bool"
			default:       false
			version_added: "2.8"
		}
		external: {
			description: [
				"Define external parameter for this user.",
			]
			type:          "bool"
			default:       false
			version_added: "2.8"
		}
	}
}
