package ansible

module: ftd_file_upload: {
	module:            "ftd_file_upload"
	short_description: "Uploads files to Cisco FTD devices over HTTP(S)"
	description: [
		"Uploads files to Cisco FTD devices including disk files, backups, and upgrades.",
	]
	version_added: "2.7"
	author:        "Cisco Systems, Inc. (@annikulin)"
	options: {
		operation: {
			description: [
				"The name of the operation to execute.",
				"Only operations that upload file can be used in this module.",
			]
			required: true
			type:     "str"
		}
		file_to_upload: {
			description: [
				"Absolute path to the file that should be uploaded.",
			]
			required:      true
			type:          "path"
			version_added: "2.8"
		}
		register_as: {
			description: [
				"Specifies Ansible fact name that is used to register received response from the FTD device.",
			]
			type: "str"
		}
	}
}
