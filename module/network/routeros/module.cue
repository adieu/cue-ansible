package routeros

routeros_command :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	routeros_command: {

		// The I(match) argument is used in conjunction with the I(wait_for) argument to specify the match policy.  Valid values are C(all) or C(any).  If the value is set to C(all) then all conditionals in the wait_for must be satisfied.  If the value is set to C(any) then only one of the values must be satisfied.

		match?: string

		// Specifies the number of retries a command should by tried before it is considered failed. The command is run on the target device every retry and evaluated against the I(wait_for) conditions.

		retries?: string

		// List of conditions to evaluate against the output of the command. The task will wait for each condition to be true before moving forward. If the conditional is not true within the configured number of retries, the task fails. See examples.

		wait_for?: string

		// List of commands to send to the remote RouterOS device over the configured provider. The resulting output from the command is returned. If the I(wait_for) argument is provided, the module is not returned until the condition is satisfied or the number of retries has expired.

		commands: string

		// Configures the interval in seconds to wait between retries of the command. If the command does not pass the specified conditions, the interval indicates how long to wait before trying the command again.

		interval?: string
	}
}

routeros_facts :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	routeros_facts: {

		gather_subset?: string

		// When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include C(all), C(hardware), C(config), and C(interfaces).  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(!) to specify that a specific subset should not be collected.
	}
}
