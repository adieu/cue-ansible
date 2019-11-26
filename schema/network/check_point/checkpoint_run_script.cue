package ansible

module: checkpoint_run_script: {
	module:            "checkpoint_run_script"
	short_description: "Run scripts on Check Point devices over Web Services API"
	description: [
		"Run scripts on Check Point devices. All operations are performed over Web Services API.",
	]

	version_added: "2.8"
	author:        "Ansible by Red Hat (@rcarrillocruz)"
	options: {
		script_name: {
			description: [
				"Name of the script.",
			]
			type:     "str"
			required: true
		}
		script: {
			description: [
				"Script body contents.",
			]
			type:     "str"
			required: true
		}
		targets: {
			description: [
				"Targets the script should be run against. Can reference either name or UID.",
			]
			type:     "list"
			required: true
		}
	}
}
