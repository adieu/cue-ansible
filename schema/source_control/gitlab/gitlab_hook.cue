package ansible

module: gitlab_hook: {
	module:            "gitlab_hook"
	short_description: "Manages GitLab project hooks."
	description: [
		"Adds, updates and removes project hook",
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
				"Id or Full path of the project in the form of group/name.",
			]
			required: true
			type:     "str"
		}
		hook_url: {
			description: [
				"The url that you want GitLab to post to, this is used as the primary key for updates and deletion.",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"When C(present) the hook will be updated to match the input or created if it doesn't exist.",
				"When C(absent) hook will be deleted if it exists.",
			]
			required: true
			default:  "present"
			type:     "str"
			choices: ["present", "absent"]
		}
		push_events: {
			description: [
				"Trigger hook on push events.",
			]
			type:    "bool"
			default: true
		}
		issues_events: {
			description: [
				"Trigger hook on issues events.",
			]
			type:    "bool"
			default: false
		}
		merge_requests_events: {
			description: [
				"Trigger hook on merge requests events.",
			]
			type:    "bool"
			default: false
		}
		tag_push_events: {
			description: [
				"Trigger hook on tag push events.",
			]
			type:    "bool"
			default: false
		}
		note_events: {
			description: [
				"Trigger hook on note events or when someone adds a comment.",
			]
			type:    "bool"
			default: false
		}
		job_events: {
			description: [
				"Trigger hook on job events.",
			]
			type:    "bool"
			default: false
		}
		pipeline_events: {
			description: [
				"Trigger hook on pipeline events.",
			]
			type:    "bool"
			default: false
		}
		wiki_page_events: {
			description: [
				"Trigger hook on wiki events.",
			]
			type:    "bool"
			default: false
		}
		hook_validate_certs: {
			description: [
				"Whether GitLab will do SSL verification when triggering the hook.",
			]
			type:    "bool"
			default: false
			aliases: ["enable_ssl_verification"]
		}
		token: {
			description: [
				"Secret token to validate hook messages at the receiver.",
				"If this is present it will always result in a change as it cannot be retrieved from GitLab.",
				"Will show up in the X-GitLab-Token HTTP request header.",
			]
			required: false
			type:     "str"
		}
	}
}
