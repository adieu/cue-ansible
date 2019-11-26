package ansible

module: eos_command: {
	module:            "eos_command"
	version_added:     "2.1"
	author:            "Peter Sprygada (@privateip)"
	short_description: "Run arbitrary commands on an Arista EOS device"
	description: [
		"Sends an arbitrary set of commands to an EOS node and returns the results read from the device.  This module includes an argument that will cause the module to wait for a specific condition before returning or timing out if the condition is not met.",
	]

	extends_documentation_fragment: "eos"
	notes: [
		"Tested against EOS 4.15",
	]
	options: {
		commands: {
			description: [
				"The commands to send to the remote EOS device over the configured provider.  The resulting output from the command is returned.  If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of I(retries) has been exceeded.",
			]

			required: true
		}
		wait_for: {
			description: [
				"Specifies what to evaluate from the output of the command and what conditionals to apply.  This argument will cause the task to wait for a particular conditional to be true before moving forward.   If the conditional is not true by the configured retries, the task fails. Note - With I(wait_for) the value in C(result['stdout']) can be accessed using C(result), that is to access C(result['stdout'][0]) use C(result[0]) See examples.",
			]

			aliases: ["waitfor"]
			version_added: "2.2"
		}
		match: {
			description: [
				"The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the I(wait_for) must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.",
			]

			default: "all"
			choices: ["any", "all"]
			version_added: "2.2"
		}
		retries: {
			description: [
				"Specifies the number of retries a command should be tried before it is considered failed.  The command is run on the target device every retry and evaluated against the I(wait_for) conditionals.",
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
