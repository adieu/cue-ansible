package ansible

module: onyx_command: {
	module:                         "onyx_command"
	extends_documentation_fragment: "onyx"
	version_added:                  "2.5"
	author:                         "Samer Deeb (@samerd)"
	short_description:              "Run commands on remote devices running Mellanox ONYX"
	description: [
		"Sends arbitrary commands to an Mellanox ONYX network device and returns the results read from the device. This module includes an argument that will cause the module to wait for a specific condition before returning or timing out if the condition is not met.",
		"This module does not support running commands in configuration mode. Please use M(onyx_config) to configure Mellanox ONYX devices.",
	]

	notes: [
		"Tested on ONYX 3.6.4000",
	]
	options: {
		commands: {
			description: [
				"List of commands to send to the remote Mellanox ONYX network device. The resulting output from the command is returned. If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retries has expired.",
			]

			required: true
		}
		wait_for: description: [
			"List of conditions to evaluate against the output of the command. The task will wait for each condition to be true before moving forward. If the conditional is not true within the configured number of retries, the task fails. See examples.",
		]

		match: {
			description: [
				"The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the wait_for must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.",
			]

			default: "all"
			choices: ["any", "all"]
		}
		retries: {
			description: [
				"Specifies the number of retries a command should by tried before it is considered failed. The command is run on the target device every retry and evaluated against the I(wait_for) conditions.",
			]

			default: 10
		}
		interval: {
			description: [
				"Configures the interval in seconds to wait between retries of the command. If the command does not pass the specified conditions, the interval indicates how long to wait before trying the command again.",
			]

			default: 1
		}
	}
}
