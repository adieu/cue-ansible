package ansible

module: icx_config: {
	module:            "icx_config"
	version_added:     "2.9"
	author:            "Ruckus Wireless (@Commscope)"
	short_description: "Manage configuration sections of Ruckus ICX 7000 series switches"
	description: [
		"Ruckus ICX configurations use a simple block indent file syntax for segmenting configuration into sections.  This module provides an implementation for working with ICX configuration sections in a deterministic way.",
	]

	notes: [
		"Tested against ICX 10.1.",
		"For information on using ICX platform, see L(the ICX OS Platform Options guide,../network/user_guide/platform_icx.html).",
	]
	options: {
		lines: {
			description: [
				"The ordered set of commands that should be configured in the section.  The commands must be the exact same commands as found in the device running-config.  Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser.",
			]

			type: "list"
			aliases: ["commands"]
		}
		parents: {
			description: [
				"The ordered set of parents that uniquely identify the section or hierarchy the commands should be checked against.  If the parents argument is omitted, the commands are checked against the set of top level or global commands.",
			]

			type: "list"
		}
		src: {
			description: [
				"Specifies the source path to the file that contains the configuration or configuration template to load.  The path to the source file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory.  This argument is mutually exclusive with I(lines), I(parents).",
			]

			type: "str"
		}
		before: {
			description: [
				"The ordered set of commands to push on to the command stack if a change needs to be made.  This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system.",
			]

			type: "list"
		}
		after: {
			description: [
				"The ordered set of commands to append to the end of the command stack if a change needs to be made.  Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.",
			]

			type: "list"
		}
		match: {
			description: [
				"Instructs the module on the way to perform the matching of the set of commands against the current device config.  If match is set to I(line), commands are matched line by line.  If match is set to I(strict), command lines are matched with respect to position.  If match is set to I(exact), command lines must be an equal match.  Finally, if match is set to I(none), the module will not attempt to compare the source configuration with the running configuration on the remote device.",
			]

			type: "str"
			choices: ["line", "strict", "exact", "none"]
			default: "line"
		}
		replace: {
			description: [
				"Instructs the module on the way to perform the configuration on the device.  If the replace argument is set to I(line) then the modified lines are pushed to the device in configuration mode.  If the replace argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct.",
			]

			type:    "str"
			default: "line"
			choices: ["line", "block"]
		}
		multiline_delimiter: {
			description: [
				"This argument is used when pushing a multiline configuration element to the ICX device.  It specifies the character to use as the delimiting character.  This only applies to the configuration action.",
			]

			type:    "str"
			default: "@"
		}
		backup: {
			description: [
				"This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made.  The backup file is written to the C(backup) folder in the playbook root directory or role root directory, if playbook is part of an ansible role. If the directory does not exist, it is created.",
			]

			type:    "bool"
			default: "no"
		}
		defaults: {
			description: [
				"This argument specifies whether or not to collect all defaults when getting the remote device running config.  When enabled, the module will get the current config by issuing the command C(show running-config all).",
			]

			type:    "bool"
			default: "no"
		}
		running_config: {
			description: [
				"The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current running-config for every task in a playbook.  The I(running_config) argument allows the implementer to pass in the configuration to use as the base config for comparison.",
			]

			type: "str"
			aliases: ["config"]
		}
		save_when: {
			description: [
				"When changes are made to the device running-configuration, the changes are not copied to non-volatile storage by default.  Using this argument will change that before.  If the argument is set to I(always), then the running-config will always be copied to the start-up configuration and the I(modified) flag will always be set to True.  If the argument is set to I(modified), then the running-config will only be copied to the start-up configuration if it has changed since the last save to configuration.  If the argument is set to I(never), the running-config will never be copied to the configuration.  If the argument is set to I(changed), then the running-config will only be copied to the configuration if the task has made a change.",
			]

			type:    "str"
			default: "never"
			choices: ["always", "never", "modified", "changed"]
		}
		diff_against: {
			description: [
				"When using the C(ansible-playbook --diff) command line argument the module can generate diffs against different sources.",
				"When this option is configure as I(startup), the module will return the diff of the running-config against the configuration.",
				"When this option is configured as I(intended), the module will return the diff of the running-config against the configuration provided in the C(intended_config) argument.",
				"When this option is configured as I(running), the module will return the before and after diff of the running-config with respect to any changes made to the device configuration.",
			]

			type: "str"
			choices: ["running", "startup", "intended"]
		}
		diff_ignore_lines: {
			description: [
				"Use this argument to specify one or more lines that should be ignored during the diff.  This is used for lines in the configuration that are automatically updated by the system.  This argument takes a list of regular expressions or exact line matches.",
			]

			type: "list"
		}
		intended_config: {
			description: [
				"The C(intended_config) provides the master configuration that the node should conform to and is used to check the final running-config against.   This argument will not modify any settings on the remote device and is strictly used to check the compliance of the current device's configuration against.  When specifying this argument, the task should also modify the C(diff_against) value and set it to I(intended).",
			]

			type: "str"
		}
	}
}
