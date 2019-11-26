package ansible

module: junos_config: {
	module:            "junos_config"
	version_added:     "2.1"
	author:            "Peter Sprygada (@privateip)"
	short_description: "Manage configuration on devices running Juniper JUNOS"
	description: [
		"This module provides an implementation for working with the active configuration running on Juniper JUNOS devices.  It provides a set of arguments for loading configuration, performing rollback operations and zeroing the active configuration on the device.",
	]

	extends_documentation_fragment: "junos"
	options: {
		lines: description: [
			"This argument takes a list of C(set) or C(delete) configuration lines to push into the remote device.  Each line must start with either C(set) or C(delete).  This argument is mutually exclusive with the I(src) argument.",
		]

		src: {
			description: [
				"The I(src) argument provides a path to the configuration file to load into the remote system. The path can either be a full system path to the configuration file if the value starts with / or relative to the root of the implemented role or playbook. This argument is mutually exclusive with the I(lines) argument.",
			]

			version_added: "2.2"
		}
		src_format: {
			description: [
				"The I(src_format) argument specifies the format of the configuration found int I(src).  If the I(src_format) argument is not provided, the module will attempt to determine the format of the configuration file specified in I(src).",
			]

			choices: ["xml", "set", "text", "json"]
			version_added: "2.2"
		}
		rollback: description: [
			"The C(rollback) argument instructs the module to rollback the current configuration to the identifier specified in the argument.  If the specified rollback identifier does not exist on the remote device, the module will fail.  To rollback to the most recent commit, set the C(rollback) argument to 0.",
		]

		zeroize: {
			description: [
				"The C(zeroize) argument is used to completely sanitize the remote device configuration back to initial defaults.  This argument will effectively remove all current configuration statements on the remote device.",
			]

			type: "bool"
		}
		confirm: {
			description: [
				"The C(confirm) argument will configure a time out value in minutes for the commit to be confirmed before it is automatically rolled back.  If the C(confirm) argument is set to False, this argument is silently ignored.  If the value for this argument is set to 0, the commit is confirmed immediately.",
			]

			default: 0
		}
		comment: {
			description: [
				"The C(comment) argument specifies a text string to be used when committing the configuration.  If the C(confirm) argument is set to False, this argument is silently ignored.",
			]

			default: "configured by junos_config"
		}
		replace: {
			description: [
				"The C(replace) argument will instruct the remote device to replace the current configuration hierarchy with the one specified in the corresponding hierarchy of the source configuration loaded from this module.",
				"Note this argument should be considered deprecated.  To achieve the equivalent, set the I(update) argument to C(replace). This argument will be removed in a future release. The C(replace) and C(update) argument is mutually exclusive.",
			]

			type:    "bool"
			default: "no"
		}
		backup: {
			description: [
				"This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made. If the C(backup_options) value is not given, the backup file is written to the C(backup) folder in the playbook root directory or role root directory, if playbook is part of an ansible role. If the directory does not exist, it is created.",
			]

			type:          "bool"
			default:       "no"
			version_added: "2.2"
		}
		update: {
			description: [
				"This argument will decide how to load the configuration data particularly when the candidate configuration and loaded configuration contain conflicting statements. Following are accepted values. C(merge) combines the data in the loaded configuration with the candidate configuration. If statements in the loaded configuration conflict with statements in the candidate configuration, the loaded statements replace the candidate ones. C(override) discards the entire candidate configuration and replaces it with the loaded configuration. C(replace) substitutes each hierarchy level in the loaded configuration for the corresponding level. C(update) is similar to the override option. The new configuration completely replaces the existing configuration. The difference comes when the configuration is later committed. This option performs a 'diff' between the new candidate configuration and the existing committed configuration. It then only notifies system processes responsible for the changed portions of the configuration, and only marks the actual configuration changes as 'changed'.",
			]

			default: "merge"
			choices: ["merge", "override", "replace", "update"]
			version_added: "2.3"
		}
		confirm_commit: {
			description: [
				"This argument will execute commit operation on remote device. It can be used to confirm a previous commit.",
			]

			type:          "bool"
			default:       "no"
			version_added: "2.4"
		}
		check_commit: {
			description: [
				"This argument will check correctness of syntax; do not apply changes.",
				"Note that this argument can be used to confirm verified configuration done via commit confirmed operation",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.8"
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
	requirements: [
		"ncclient (>=v0.5.2)",
	]
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Abbreviated commands are NOT idempotent, see L(Network FAQ,../network/user_guide/faq.html#why-do-the-config-modules-always-return-changed-true-with-abbreviated-commands).",
		"Loading JSON-formatted configuration I(json) is supported starting in Junos OS Release 16.1 onwards.",
		"Update C(override) not currently compatible with C(set) notation.",
		"Tested against vSRX JUNOS version 15.1X49-D15.4, vqfx-10000 JUNOS Version 15.1X53-D60.4.",
		"Recommended connection is C(netconf). See L(the Junos OS Platform Options,../network/user_guide/platform_junos.html).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
}
