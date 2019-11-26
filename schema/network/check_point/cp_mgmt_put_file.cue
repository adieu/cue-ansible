package ansible

module: cp_mgmt_put_file: {
	module:            "cp_mgmt_put_file"
	short_description: "put file on Check Point over Web Services API"
	description: [
		"put file on Check Point over Web Services API",
		"All operations are performed over Web Services API.",
	]
	version_added: "2.9"
	author:        "Or Soffer (@chkp-orso)"
	options: {
		targets: {
			description: [
				"On what targets to execute this command. Targets may be identified by their name, or object unique identifier.",
			]
			type: "list"
		}
		file_content: {
			description: [
				"N/A",
			]
			type: "str"
		}
		file_name: {
			description: [
				"N/A",
			]
			type: "str"
		}
		file_path: {
			description: [
				"N/A",
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
