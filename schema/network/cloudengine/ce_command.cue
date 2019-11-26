package ansible

module: ce_command: {
	module:            "ce_command"
	version_added:     "2.3"
	author:            "JackyGao2016 (@CloudEngine-Ansible)"
	short_description: "Run arbitrary command on HUAWEI CloudEngine devices."
	description: [
		"Sends an arbitrary command to an HUAWEI CloudEngine node and returns the results read from the device.  The ce_command module includes an argument that will cause the module to wait for a specific condition before returning or timing out if the condition is not met.",
	]

	notes: [
		"Recommended connection is C(network_cli).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		commands: {
			description: [
				"The commands to send to the remote HUAWEI CloudEngine device over the configured provider.  The resulting output from the command is returned. If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of I(retries) has been exceeded.",
			]

			required: true
		}
		wait_for: description: [
			"Specifies what to evaluate from the output of the command and what conditionals to apply.  This argument will cause the task to wait for a particular conditional to be true before moving forward.   If the conditional is not true by the configured retries, the task fails.  See examples.",
		]

		match: {
			description: [
				"The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the I(wait_for) must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.",
			]

			default: "all"
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
