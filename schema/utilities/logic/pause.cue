package ansible

module: pause: {
	module:            "pause"
	short_description: "Pause playbook execution"
	description: [
		"Pauses playbook execution for a set amount of time, or until a prompt is acknowledged. All parameters are optional. The default behavior is to pause with a prompt.",
		"To pause/wait/sleep per host, use the M(wait_for) module.",
		"You can use C(ctrl+c) if you wish to advance a pause earlier than it is set to expire or if you need to abort a playbook run entirely. To continue early press C(ctrl+c) and then C(c). To abort a playbook press C(ctrl+c) and then C(a).",
		"The pause module integrates into async/parallelized playbooks without any special considerations (see Rolling Updates). When using pauses with the C(serial) playbook parameter (as in rolling updates) you are only prompted once for the current group of hosts.",
		"This module is also supported for Windows targets.",
	]
	version_added: "0.8"
	options: {
		minutes: description: [
			"A positive number of minutes to pause for.",
		]
		seconds: description: [
			"A positive number of seconds to pause for.",
		]
		prompt: description: [
			"Optional text to use for the prompt message.",
		]
		echo: {
			description: [
				"Controls whether or not keyboard input is shown when typing.",
				"Has no effect if 'seconds' or 'minutes' is set.",
			]
			type:          "bool"
			default:       "yes"
			version_added: 2.5
		}
	}
	author: "Tim Bielawa (@tbielawa)"
	notes: [
		"Starting in 2.2,  if you specify 0 or negative for minutes or seconds, it will wait for 1 second, previously it would wait indefinitely.",
		"This module is also supported for Windows targets.",
		"User input is not captured or echoed, regardless of echo setting, when minutes or seconds is specified.",
	]
}
