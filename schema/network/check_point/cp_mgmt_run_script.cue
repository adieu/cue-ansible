package ansible

module: cp_mgmt_run_script: {
	module:            "cp_mgmt_run_script"
	short_description: "Executes the script on a given list of targets."
	description: [
		"Executes the script on a given list of targets.",
		"All operations are performed over Web Services API.",
	]
	version_added: "2.9"
	author:        "Or Soffer (@chkp-orso)"
	options: {
		script_name: {
			description: [
				"Script name.",
			]
			type: "str"
		}
		script: {
			description: [
				"Script body.",
			]
			type: "str"
		}
		targets: {
			description: [
				"On what targets to execute this command. Targets may be identified by their name, or object unique identifier.",
			]
			type: "list"
		}
		args: {
			description: [
				"Script arguments.",
			]
			type: "str"
		}
		comments: {
			description: [
				"Comments string.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "checkpoint_commands"
}
