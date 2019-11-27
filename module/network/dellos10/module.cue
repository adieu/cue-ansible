package dellos10

dellos10_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	dellos10_facts: {

		gather_subset?: string

		// When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.
	}
}

dellos10_command :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	dellos10_command: {

		// The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the wait_for must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.

		match?: string

		// Specifies the number of retries a command should be tried before it is considered failed. The command is run on the target device every retry and evaluated against the I(wait_for) conditions.

		retries?: int

		// List of conditions to evaluate against the output of the command. The task will wait for each condition to be true before moving forward. If the conditional is not true within the configured number of retries, the task fails. See examples.

		wait_for?: [...]

		// List of commands to send to the remote dellos10 device over the configured provider. The resulting output from the command is returned. If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retries has expired. If a command sent to the device requires answering a prompt, it is possible to pass a dict containing I(command), I(answer) and I(prompt). Common answers are 'yes' or "\r" (carriage return, must be double quotes). See examples.

		commands: [...]

		// Configures the interval in seconds to wait between retries of the command. If the command does not pass the specified conditions, the interval indicates how long to wait before trying the command again.

		interval?: int
	}
}

dellos10_config :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	dellos10_config: {

		// The ordered set of commands to append to the end of the command stack if a change needs to be made.  Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.

		after?: string

		// This is a dict object containing configurable options related to backup file path. The value of this option is read only when C(backup) is set to I(yes), if C(backup) is set to I(no) this option will be silently ignored.

		backup_options?: {...}

		// The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current running-config for every task in a playbook.  The I(config) argument allows the implementer to pass in the configuration to use as the base config for comparison.

		config?: string

		// The ordered set of commands that should be configured in the section.  The commands must be the exact same commands as found in the device running-config. Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser. This argument is mutually exclusive with I(src).

		lines?: string

		// Specifies the source path to the file that contains the configuration or configuration template to load.  The path to the source file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory. This argument is mutually exclusive with I(lines).

		src?: string

		// This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made. If the C(backup_options) value is not given, the backup file is written to the C(backup) folder in the playbook root directory. If the directory does not exist, it is created.

		backup?: bool

		// The ordered set of commands to push on to the command stack if a change needs to be made.  This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system.

		before?: string

		// Instructs the module on the way to perform the matching of the set of commands against the current device config.  If match is set to I(line), commands are matched line by line.  If match is set to I(strict), command lines are matched with respect to position.  If match is set to I(exact), command lines must be an equal match.  Finally, if match is set to I(none), the module will not attempt to compare the source configuration with the running configuration on the remote device.

		match?: string

		// The ordered set of parents that uniquely identify the section or hierarchy the commands should be checked against.  If the parents argument is omitted, the commands are checked against the set of top level or global commands.

		parents?: string

		// Instructs the module on the way to perform the configuration on the device.  If the replace argument is set to I(line) then the modified lines are pushed to the device in configuration mode.  If the replace argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct.

		replace?: string

		// The C(save) argument instructs the module to save the running- config to the startup-config at the conclusion of the module running.  If check mode is specified, this argument is ignored.

		save?: bool

		// The I(update) argument controls how the configuration statements are processed on the remote device.  Valid choices for the I(update) argument are I(merge) and I(check).  When you set this argument to I(merge), the configuration changes merge with the current device running configuration.  When you set this argument to I(check) the configuration updates are determined but not actually configured on the remote device.

		update?: string
	}
}
