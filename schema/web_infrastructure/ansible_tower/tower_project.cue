package ansible

module: tower_project: {
	module:            "tower_project"
	author:            "Wayne Witzel III (@wwitzel3)"
	version_added:     "2.3"
	short_description: "create, update, or destroy Ansible Tower projects"
	description: [
		"Create, update, or destroy Ansible Tower projects. See U(https://www.ansible.com/tower) for an overview.",
	]

	options: {
		name: {
			description: [
				"Name to use for the project.",
			]
			required: true
		}
		description: description: [
			"Description to use for the project.",
		]
		scm_type: {
			description: [
				"Type of SCM resource.",
			]
			choices: ["manual", "git", "hg", "svn"]
			default: "manual"
		}
		scm_url: description: [
			"URL of SCM resource.",
		]
		local_path: description: [
			"The server playbook directory for manual projects.",
		]
		scm_branch: description: [
			"The branch to use for the SCM resource.",
		]
		scm_credential: description: [
			"Name of the credential to use with this SCM resource.",
		]
		scm_clean: {
			description: [
				"Remove local modifications before updating.",
			]
			type:    "bool"
			default: "no"
		}
		scm_delete_on_update: {
			description: [
				"Remove the repository completely before updating.",
			]
			type:    "bool"
			default: "no"
		}
		scm_update_on_launch: {
			description: [
				"Before an update to the local repository before launching a job with this project.",
			]
			type:    "bool"
			default: "no"
		}
		scm_update_cache_timeout: {
			version_added: "2.8"
			description: [
				"Cache Timeout to cache prior project syncs for a certain number of seconds. Only valid if scm_update_on_launch is to True, otherwise ignored.",
			]

			default: 0
		}
		job_timeout: {
			version_added: "2.8"
			description: [
				"The amount of time (in seconds) to run before the SCM Update is canceled. A value of 0 means no timeout.",
			]
			default: 0
		}
		custom_virtualenv: {
			version_added: "2.8"
			description: [
				"Local absolute file path containing a custom Python virtualenv to use",
			]
		}
		organization: description: [
			"Primary key of organization for project.",
		]
		state: {
			description: [
				"Desired state of the resource.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "tower"
}
