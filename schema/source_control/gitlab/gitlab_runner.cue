package ansible

module: gitlab_runner: {
	module:            "gitlab_runner"
	short_description: "Create, modify and delete GitLab Runners."
	description: [
		"Register, update and delete runners with the GitLab API.",
		"All operations are performed using the GitLab API v4.",
		"For details, consult the full API documentation at U(https://docs.gitlab.com/ee/api/runners.html).",
		"A valid private API token is required for all operations. You can create as many tokens as you like using the GitLab web interface at U(https://$GITLAB_URL/profile/personal_access_tokens).",
		"A valid registration token is required for registering a new runner. To create shared runners, you need to ask your administrator to give you this token. It can be found at U(https://$GITLAB_URL/admin/runners/).",
	]

	notes: [
		"To create a new runner at least the C(api_token), C(description) and C(api_url) options are required.",
		"Runners need to have unique descriptions.",
	]
	version_added: 2.8
	author: [
		"Samy Coenen (@SamyCoenen)",
		"Guillaume Martinez (@Lunik)",
	]
	requirements: [
		"python >= 2.7",
		"python-gitlab >= 1.5.0",
	]
	extends_documentation_fragment: [
		"auth_basic",
	]
	options: {
		api_token: {
			description: [
				"Your private token to interact with the GitLab API.",
			]
			required: true
			type:     "str"
		}
		description: {
			description: [
				"The unique name of the runner.",
			]
			required: true
			type:     "str"
			aliases: [
				"name",
			]
		}
		state: {
			description: [
				"Make sure that the runner with the same name exists with the same configuration or delete the runner with the same name.",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
			type: "str"
		}
		registration_token: {
			description: [
				"The registration token is used to register new runners.",
			]
			required: true
			type:     "str"
		}
		active: {
			description: [
				"Define if the runners is immediately active after creation.",
			]
			required: false
			default:  true
			type:     "bool"
		}
		locked: {
			description: [
				"Determines if the runner is locked or not.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		access_level: {
			description: [
				"Determines if a runner can pick up jobs from protected branches.",
			]
			required: false
			default:  "ref_protected"
			choices: ["ref_protected", "not_protected"]
			type: "str"
		}
		maximum_timeout: {
			description: [
				"The maximum timeout that a runner has to pick up a specific job.",
			]
			required: false
			default:  3600
			type:     "int"
		}
		run_untagged: {
			description: [
				"Run untagged jobs or not.",
			]
			required: false
			default:  true
			type:     "bool"
		}
		tag_list: {
			description: "The tags that apply to the runner."
			required:    false
			default: []
			type: "list"
		}
	}
}
