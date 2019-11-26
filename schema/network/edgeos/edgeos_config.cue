package ansible

module: edgeos_config: {
	module:        "edgeos_config"
	version_added: "2.5"
	author: [
		"Nathaniel Case (@Qalthos)",
		"Sam Doran (@samdoran)",
	]
	short_description: "Manage EdgeOS configuration on remote device"
	description: [
		"This module provides configuration file management of EdgeOS devices. It provides arguments for managing both the configuration file and state of the active configuration. All configuration statements are based on `set` and `delete` commands in the device configuration.",
		"This is a network module and requires the C(connection: network_cli) in order to work properly.",
		"For more information please see the L(Network Guide,../network/getting_started/index.html).",
	]
	notes: [
		"Tested against EdgeOS 1.9.7",
		"Setting C(ANSIBLE_PERSISTENT_COMMAND_TIMEOUT) to 30 is recommended since the save command can take longer than the default of 10 seconds on some EdgeOS hardware.",
	]

	options: {
		lines: description: [
			"The ordered set of configuration lines to be managed and compared with the existing configuration on the remote device.",
		]

		src: description: [
			"The C(src) argument specifies the path to the source config file to load. The source config file can either be in bracket format or set format. The source file can include Jinja2 template variables.",
		]

		match: {
			description: [
				"The C(match) argument controls the method used to match against the current active configuration. By default, the desired config is matched against the active config and the deltas are loaded. If the C(match) argument is set to C(none) the active configuration is ignored and the configuration is always loaded.",
			]

			default: "line"
			choices: ["line", "none"]
		}
		backup: {
			description: [
				"The C(backup) argument will backup the current device's active configuration to the Ansible control host prior to making any changes. If the C(backup_options) value is not given, the backup file will be located in the backup folder in the playbook root directory or role root directory if the playbook is part of an ansible role. If the directory does not exist, it is created.",
			]

			type:    "bool"
			default: "no"
		}
		comment: {
			description: [
				"Allows a commit description to be specified to be included when the configuration is committed. If the configuration is not changed or committed, this argument is ignored.",
			]

			default: "configured by edgeos_config"
		}
		config: description: [
			"The C(config) argument specifies the base configuration to use to compare against the desired configuration. If this value is not specified, the module will automatically retrieve the current active configuration from the remote device.",
		]

		save: {
			description: [
				"The C(save) argument controls whether or not changes made to the active configuration are saved to disk. This is independent of committing the config. When set to C(True), the active configuration is saved.",
			]

			type:    "bool"
			default: "no"
		}
		backup_options: {
			description: [
				"This is a dict object containing configurable options related to backup file path. The value of this option is read only when C(backup) is set to I(yes), if C(backup) is set to I(no) this option will be silently ignored.",
			]

			suboptions: {
				filename: description: [
					"The filename to be used to store the backup configuration. If the the filename is not given it will be generated based on the hostname, current time and date in format defined by <hostname>_config.<current-date>@<current-time>",
				]

				dir_path: {
					description: [
						"This option provides the path ending with directory name in which the backup configuration file will be stored. If the directory does not exist it will be first created and the filename is either the value of C(filename) or default filename as described in C(filename) options description. If the path value is not given in that case a I(backup) directory will be created in the current working directory and backup configuration will be copied in C(filename) within I(backup) directory.",
					]

					type: "path"
				}
			}
			type:          "dict"
			version_added: "2.8"
		}
	}
}
