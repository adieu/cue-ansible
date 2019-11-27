package edgeos

edgeos_command :: {

	// The number of seconds to wait between C(retries) of the command.

	interval?: string

	// Used in conjunction with C(wait_for) to create match policy. If set to C(all), then all conditions in C(wait_for) must be met. If set to C(any), then only one condition must match.

	match?: string

	// Number of times a command should be tried before it is considered failed. The command is run on the target device and evaluated against the C(wait_for) conditionals.

	retries?: string

	// Causes the task to wait for a specific condition to be met before moving forward. If the condition is not met before the specified number of retries is exceeded, the task will fail.

	wait_for?: string

	// The commands or ordered set of commands that should be run against the remote device. The output of the command is returned to the playbook. If the C(wait_for) argument is provided, the module is not returned until the condition is met or the number of retries is exceeded.

	commands: string
}

edgeos_config :: {

	// Allows a commit description to be specified to be included when the configuration is committed. If the configuration is not changed or committed, this argument is ignored.

	comment?: string

	// The C(config) argument specifies the base configuration to use to compare against the desired configuration. If this value is not specified, the module will automatically retrieve the current active configuration from the remote device.

	config?: string

	// The ordered set of configuration lines to be managed and compared with the existing configuration on the remote device.

	lines?: string

	// The C(match) argument controls the method used to match against the current active configuration. By default, the desired config is matched against the active config and the deltas are loaded. If the C(match) argument is set to C(none) the active configuration is ignored and the configuration is always loaded.

	match?: string

	// The C(save) argument controls whether or not changes made to the active configuration are saved to disk. This is independent of committing the config. When set to C(True), the active configuration is saved.

	save?: bool

	// The C(src) argument specifies the path to the source config file to load. The source config file can either be in bracket format or set format. The source file can include Jinja2 template variables.

	src?: string

	// The C(backup) argument will backup the current device's active configuration to the Ansible control host prior to making any changes. If the C(backup_options) value is not given, the backup file will be located in the backup folder in the playbook root directory or role root directory if the playbook is part of an ansible role. If the directory does not exist, it is created.

	backup?: bool

	// This is a dict object containing configurable options related to backup file path. The value of this option is read only when C(backup) is set to I(yes), if C(backup) is set to I(no) this option will be silently ignored.

	backup_options?: {...}
}

edgeos_facts :: {

	// When supplied, this argument will restrict the facts collected to a given subset. Possible values for this argument include all, default, config, and neighbors. Can specify a list of values to include a larger subset. Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.

	gather_subset?: string
}
