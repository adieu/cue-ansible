package ansible

module: nxos_command: {
	module:                         "nxos_command"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.1"
	author:                         "Peter Sprygada (@privateip)"
	short_description:              "Run arbitrary command on Cisco NXOS devices"
	description: [
		"Sends an arbitrary command to an NXOS node and returns the results read from the device.  This module includes an argument that will cause the module to wait for a specific condition before returning or timing out if the condition is not met.",
	]

	options: {
		commands: {
			description: [
				"The commands to send to the remote NXOS device.  The resulting output from the command is returned.  If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retires as expired.",
				"The I(commands) argument also accepts an alternative form that allows for complex values that specify the command to run and the output format to return.   This can be done on a command by command basis.  The complex argument supports the keywords C(command) and C(output) where C(command) is the command to run and C(output) is one of 'text' or 'json'.",
			]

			required: true
		}
		wait_for: {
			description: [
				"Specifies what to evaluate from the output of the command and what conditionals to apply.  This argument will cause the task to wait for a particular conditional to be true before moving forward.   If the conditional is not true by the configured retries, the task fails.  See examples.",
			]

			aliases: ["waitfor"]
			version_added: "2.2"
		}
		match: {
			description: [
				"The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the I(wait_for) must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.",
			]

			default:       "all"
			version_added: "2.2"
		}
		retries: {
			description: [
				"Specifies the number of retries a command should by tried before it is considered failed.  The command is run on the target device every retry and evaluated against the I(wait_for) conditionals.",
			]

			default: 10
		}
		interval: {
			description: [
				"Configures the interval in seconds to wait between retries of the command.  If the command does not pass the specified conditional, the interval indicates how to long to wait before trying the command again.",
			]

			default: 1
		}
	}
}
