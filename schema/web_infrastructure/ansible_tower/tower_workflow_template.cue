package ansible

module: tower_workflow_template: {
	module:            "tower_workflow_template"
	author:            "Adrien Fleury (@fleu42)"
	version_added:     "2.7"
	short_description: "create, update, or destroy Ansible Tower workflow template."
	description: [
		"Create, update, or destroy Ansible Tower workflows. See U(https://www.ansible.com/tower) for an overview.",
	]

	options: {
		allow_simultaneous: {
			description: [
				"If enabled, simultaneous runs of this job template will be allowed.",
			]
			type: "bool"
		}
		ask_extra_vars: {
			description: [
				"Prompt user for (extra_vars) on launch.",
			]
			type:          "bool"
			version_added: "2.9"
		}
		ask_inventory: {
			description: [
				"Prompt user for inventory on launch.",
			]
			type:          "bool"
			version_added: "2.9"
		}
		description: description: [
			"The description to use for the workflow.",
		]
		extra_vars: description: [
			"Extra variables used by Ansible in YAML or key=value format.",
		]
		inventory: {
			description: [
				"Name of the inventory to use for the job template.",
			]
			version_added: "2.9"
		}
		name: {
			description: [
				"The name to use for the workflow.",
			]
			required: true
		}
		organization: description: [
			"The organization the workflow is linked to.",
		]
		schema: description: [
			"""
		The schema is a JSON- or YAML-formatted string defining the hierarchy structure that connects the nodes. Refer to Tower documentation for more information.

		""",
		]

		survey_enabled: {
			description: [
				"Setting that variable will prompt the user for job type on the workflow launch.",
			]

			type: "bool"
		}
		survey: description: [
			"The definition of the survey associated to the workflow.",
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
