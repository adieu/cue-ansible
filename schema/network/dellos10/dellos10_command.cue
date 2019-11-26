package ansible

module: dellos10_command: {
	module:            "dellos10_command"
	version_added:     "2.2"
	author:            "Senthil Kumar Ganesan (@skg-net)"
	short_description: "Run commands on remote devices running Dell OS10"
	description: [
		"Sends arbitrary commands to a Dell EMC OS10 node and returns the results read from the device. This module includes an argument that will cause the module to wait for a specific condition before returning or timing out if the condition is not met.",
		"This module does not support running commands in configuration mode. Please use M(dellos10_config) to configure Dell EMC OS10 devices.",
	]

	extends_documentation_fragment: "dellos10"
	options: {
		commands: {
			description: [
				"List of commands to send to the remote dellos10 device over the configured provider. The resulting output from the command is returned. If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retries has expired. If a command sent to the device requires answering a prompt, it is possible to pass a dict containing I(command), I(answer) and I(prompt). Common answers are 'yes' or \"\\r\" (carriage return, must be double quotes). See examples.",
			]

			type:     "list"
			required: true
		}
		wait_for: {
			description: [
				"List of conditions to evaluate against the output of the command. The task will wait for each condition to be true before moving forward. If the conditional is not true within the configured number of retries, the task fails. See examples.",
			]

			type:          "list"
			version_added: "2.2"
		}
		match: {
			description: [
				"The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the wait_for must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.",
			]

			type:    "str"
			default: "all"
			choices: ["all", "any"]
			version_added: "2.5"
		}
		retries: {
			description: [
				"Specifies the number of retries a command should be tried before it is considered failed. The command is run on the target device every retry and evaluated against the I(wait_for) conditions.",
			]

			type:    "int"
			default: 10
		}
		interval: {
			description: [
				"Configures the interval in seconds to wait between retries of the command. If the command does not pass the specified conditions, the interval indicates how long to wait before trying the command again.",
			]

			type:    "int"
			default: 1
		}
	}
}
