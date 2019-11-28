package cli

cli_command :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	cli_command: {

		// The answer to reply with if I(prompt) is matched. The value can be a single answer or a list of answer for multiple prompts. In case the command execution results in multiple prompts the sequence of the prompt and excepted answer should be in same order.

		answer?: [...]

		// By default if any one of the prompts mentioned in C(prompt) option is matched it won't check for other prompts. This boolean flag, that when set to I(True) will check for all the prompts mentioned in C(prompt) option in the given order. If the option is set to I(True) all the prompts should be received from remote host if not it will result in timeout.

		check_all?: bool

		// The command to send to the remote network device.  The resulting output from the command is returned, unless I(sendonly) is set.

		command: string

		// The boolean value, that when set to false will send I(answer) to the device without a trailing newline.

		newline?: bool

		// A single regex pattern or a sequence of patterns to evaluate the expected prompt from I(command).

		prompt?: [...]

		// The boolean value, that when set to true will send I(command) to the device but not wait for a result.

		sendonly?: bool
	}
}

cli_config :: {
	when?: string
	tags?: [...string]
	notify?:   string | [...string]
	name?:     string
	register?: string
	vars?: {...}
	cli_config: {

		// The C(commit) argument instructs the module to push the configuration to the device. This is mapped to module check mode.

		commit?: bool

		// The I(defaults) argument will influence how the running-config is collected from the device.  When the value is set to true, the command used to collect the running-config is append with the all keyword.  When the value is set to false, the command is issued without the all keyword.

		defaults?: bool

		// Use this argument to specify one or more lines that should be ignored during the diff. This is used for lines in the configuration that are automatically updated by the system. This argument takes a list of regular expressions or exact line matches. Note that this parameter will be ignored if the platform has onbox diff support.

		diff_ignore_lines?: string

		// Instructs the module on the way to perform the matching of the set of commands against the current device config. If C(diff_match) is set to I(line), commands are matched line by line. If C(diff_match) is set to I(strict), command lines are matched with respect to position. If C(diff_match) is set to I(exact), command lines must be an equal match. Finally, if C(diff_match) is set to I(none), the module will not attempt to compare the source configuration with the running configuration on the remote device. Note that this parameter will be ignored if the platform has onbox diff support.

		diff_match?: string

		// If the C(replace) argument is set to C(yes), it will replace the entire running-config of the device with the C(config) argument value. For devices that support replacing running configuration from file on device like NXOS/JUNOS, the C(replace) argument takes path to the file on the device that will be used for replacing the entire running-config. The value of C(config) option should be I(None) for such devices. Nexus 9K devices only support replace. Use I(net_put) or I(nxos_file_copy) in case of NXOS module to copy the flat file to remote device and then use set the fullpath to this argument.

		replace?: string

		// This argument will cause the module to create a full backup of the current running config from the remote device before any changes are made. If the C(backup_options) value is not given, the backup file is written to the C(backup) folder in the playbook root directory or role root directory, if playbook is part of an ansible role. If the directory does not exist, it is created.

		backup?: bool

		// This is a dict object containing configurable options related to backup file path. The value of this option is read only when C(backup) is set to I(yes), if C(backup) is set to I(no) this option will be silently ignored.

		backup_options?: {...}

		// Instructs the module on the way to perform the configuration on the device. If the C(diff_replace) argument is set to I(line) then the modified lines are pushed to the device in configuration mode. If the argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct. Note that this parameter will be ignored if the platform has onbox diff support.

		diff_replace?: string

		// This argument is used when pushing a multiline configuration element to the device. It specifies the character to use as the delimiting character. This only applies to the configuration action.

		multiline_delimiter?: string

		// The C(rollback) argument instructs the module to rollback the current configuration to the identifier specified in the argument.  If the specified rollback identifier does not exist on the remote device, the module will fail. To rollback to the most recent commit, set the C(rollback) argument to 0. This option is mutually exclusive with C(config).

		rollback?: string

		// The C(commit_comment) argument specifies a text string to be used when committing the configuration. If the C(commit) argument is set to False, this argument is silently ignored. This argument is only valid for the platforms that support commit operation with comment.

		commit_comment?: string

		// The config to be pushed to the network device. This argument is mutually exclusive with C(rollback) and either one of the option should be given as input. The config should have indentation that the device uses.

		config?: string
	}
}
