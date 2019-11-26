package ansible

module: tower_job_template: {
	module:            "tower_job_template"
	author:            "Wayne Witzel III (@wwitzel3)"
	version_added:     "2.3"
	short_description: "create, update, or destroy Ansible Tower job template."
	description: [
		"Create, update, or destroy Ansible Tower job templates. See U(https://www.ansible.com/tower) for an overview.",
	]

	options: {
		name: {
			description: [
				"Name to use for the job template.",
			]
			required: true
		}
		description: description: [
			"Description to use for the job template.",
		]
		job_type: {
			description: [
				"The job type to use for the job template.",
			]
			required: true
			choices: ["run", "check", "scan"]
		}
		inventory: description: [
			"Name of the inventory to use for the job template.",
		]
		project: {
			description: [
				"Name of the project to use for the job template.",
			]
			required: true
		}
		playbook: {
			description: [
				"Path to the playbook to use for the job template within the project provided.",
			]
			required: true
		}
		credential: {
			description: [
				"Name of the credential to use for the job template.",
			]
			version_added: 2.7
		}
		vault_credential: {
			description: [
				"Name of the vault credential to use for the job template.",
			]
			version_added: 2.7
		}
		forks: description: [
			"The number of parallel or simultaneous processes to use while executing the playbook.",
		]
		limit: description: [
			"A host pattern to further constrain the list of hosts managed or affected by the playbook",
		]
		verbosity: {
			description: [
				"Control the output level Ansible produces as the playbook runs. 0 - Normal, 1 - Verbose, 2 - More Verbose, 3 - Debug, 4 - Connection Debug.",
			]
			choices: [0, 1, 2, 3, 4]
			default: 0
		}
		extra_vars_path: description: [
			"Path to the C(extra_vars) YAML file.",
		]
		job_tags: description: [
			"Comma separated list of the tags to use for the job template.",
		]
		force_handlers_enabled: {
			description: [
				"Enable forcing playbook handlers to run even if a task fails.",
			]
			version_added: 2.7
			type:          "bool"
			default:       "no"
		}
		skip_tags: description: [
			"Comma separated list of the tags to skip for the job template.",
		]
		start_at_task: {
			description: [
				"Start the playbook at the task matching this name.",
			]
			version_added: 2.7
		}
		diff_mode_enabled: {
			description: [
				"Enable diff mode for the job template.",
			]
			version_added: 2.7
			type:          "bool"
			default:       "no"
		}
		fact_caching_enabled: {
			description: [
				"Enable use of fact caching for the job template.",
			]
			version_added: 2.7
			type:          "bool"
			default:       "no"
		}
		host_config_key: description: [
			"Allow provisioning callbacks using this host config key.",
		]
		ask_diff_mode: {
			description: [
				"Prompt user to enable diff mode (show changes) to files when supported by modules.",
			]
			version_added: 2.7
			type:          "bool"
			default:       "no"
		}
		ask_extra_vars: {
			description: [
				"Prompt user for (extra_vars) on launch.",
			]
			type:    "bool"
			default: "no"
		}
		ask_limit: {
			description: [
				"Prompt user for a limit on launch.",
			]
			version_added: 2.7
			type:          "bool"
			default:       "no"
		}
		ask_tags: {
			description: [
				"Prompt user for job tags on launch.",
			]
			type:    "bool"
			default: "no"
		}
		ask_skip_tags: {
			description: [
				"Prompt user for job tags to skip on launch.",
			]
			version_added: 2.7
			type:          "bool"
			default:       "no"
		}
		ask_job_type: {
			description: [
				"Prompt user for job type on launch.",
			]
			type:    "bool"
			default: "no"
		}
		ask_verbosity: {
			description: [
				"Prompt user to choose a verbosity level on launch.",
			]
			version_added: 2.7
			type:          "bool"
			default:       "no"
		}
		ask_inventory: {
			description: [
				"Prompt user for inventory on launch.",
			]
			type:    "bool"
			default: "no"
		}
		ask_credential: {
			description: [
				"Prompt user for credential on launch.",
			]
			type:    "bool"
			default: "no"
		}
		survey_enabled: {
			description: [
				"Enable a survey on the job template.",
			]
			version_added: 2.7
			type:          "bool"
			default:       "no"
		}
		survey_spec: {
			description: [
				"JSON/YAML dict formatted survey definition.",
			]
			version_added: 2.8
			type:          "dict"
			required:      false
		}
		become_enabled: {
			description: [
				"Activate privilege escalation.",
			]
			type:    "bool"
			default: "no"
		}
		concurrent_jobs_enabled: {
			description: [
				"Allow simultaneous runs of the job template.",
			]
			version_added: 2.7
			type:          "bool"
			default:       "no"
		}
		state: {
			description: [
				"Desired state of the resource.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "tower"
	notes: [
		"JSON for survey_spec can be found in Tower API Documentation. See U(https://docs.ansible.com/ansible-tower/latest/html/towerapi/api_ref.html#/Job_Templates/Job_Templates_job_templates_survey_spec_create) for POST operation payload example.",
	]
}
