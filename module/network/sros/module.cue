package sros

sros_config :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	sros_config: {

		// This argument specifies whether or not to collect all defaults when getting the remote device running config.  When enabled, the module will get the current config by issuing the command C(admin display-config detail).

		defaults?: bool

		// The ordered set of commands that should be configured in the section.  The commands must be the exact same commands as found in the device running-config.  Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser.  The I(lines) argument only supports current context lines.  See EXAMPLES

		lines?: string

		// The C(save) argument instructs the module to save the running- config to the startup-config at the conclusion of the module running.  If check mode is specified, this argument is ignored.

		save?: bool

		// Specifies the source path to the file that contains the configuration or configuration template to load.  The path to the source file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory.  This argument is mutually exclusive with I(lines), I(parents).

		src?: string

		// The ordered set of commands to append to the end of the command stack if a change needs to be made.  Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.

		after?: string

		// This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made. If the C(backup_options) value is not given, the backup file is written to the C(backup) folder in the playbook root directory. If the directory does not exist, it is created.

		backup?: bool

		// This is a dict object containing configurable options related to backup file path. The value of this option is read only when C(backup) is set to I(yes), if C(backup) is set to I(no) this option will be silently ignored.

		backup_options?: {...}

		// Instructs the module on the way to perform the matching of the set of commands against the current device config.  If match is set to I(line), commands are matched line by line. If match is set to I(none), the module will not attempt to compare the source configuration with the running configuration on the remote device.

		match?: string

		// The ordered set of parents that uniquely identify the section or hierarchy the commands should be checked against.  If the parents argument is omitted, the commands are checked against the set of top level or global commands.

		parents?: string

		// Instructs the module on the way to perform the configuration on the device.  If the replace argument is set to I(line) then the modified lines are pushed to the device in configuration mode.  If the replace argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct.

		replace?: string

		// The ordered set of commands to push on to the command stack if a change needs to be made.  This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system.

		before?: string

		// The C(config) argument allows the playbook designer to supply the base configuration to be used to validate configuration changes necessary.  If this argument is provided, the module will not download the running-config from the remote node.

		config?: string

		// The force argument instructs the module to not consider the current devices running-config.  When set to true, this will cause the module to push the contents of I(src) into the device without first checking if already configured.
		// Note this argument should be considered deprecated.  To achieve the equivalent, set the C(match=none) which is idempotent.  This argument will be removed in a future release.

		force?: bool
	}
}

sros_rollback :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	sros_rollback: {

		// The I(state) argument specifies the state of the configuration entries in the devices active configuration.  When the state value is set to C(true) the configuration is present in the devices active configuration.  When the state value is set to C(false) the configuration values are removed from the devices active configuration.

		state?: string

		// The I(local_max_checkpoints) argument configures the maximum number of rollback files that can be saved on the devices local compact flash.  Valid values for this argument are in the range of 1 to 50

		local_max_checkpoints?: string

		// The I(remote_max_checkpoints) argument configures the maximum number of rollback files that can be transferred and saved to a remote location.  Valid values for this argument are in the range of 1 to 50

		remote_max_checkpoints?: string

		// The I(rescue_location) specifies the location of the rescue file.  This argument supports any valid local or remote URL as specified in SR OS

		rescue_location?: string

		// The I(rollback_location) specifies the location and filename of the rollback checkpoint files.   This argument supports any valid local or remote URL as specified in SR OS

		rollback_location?: string
	}
}

sros_command :: {
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	sros_command: {

		// List of commands to send to the remote SR OS device over the configured provider. The resulting output from the command is returned. If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retries has expired.

		commands: string

		// Configures the interval in seconds to wait between retries of the command. If the command does not pass the specified conditions, the interval indicates how long to wait before trying the command again.

		interval?: string

		// The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the wait_for must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.

		match?: string

		// Specifies the number of retries a command should by tried before it is considered failed. The command is run on the target device every retry and evaluated against the I(wait_for) conditions.

		retries?: string

		// List of conditions to evaluate against the output of the command. The task will wait for each condition to be true before moving forward. If the conditional is not true within the configured number of retries, the task fails. See examples.

		wait_for?: string
	}
}
