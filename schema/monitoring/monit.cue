package ansible

module: monit: {
	module:            "monit"
	short_description: "Manage the state of a program monitored via Monit"
	description: [
		"Manage the state of a program monitored via I(Monit)",
	]
	version_added: "1.2"
	options: {
		name: {
			description: [
				"The name of the I(monit) program/process to manage",
			]
			required: true
		}
		state: {
			description: [
				"The state of service",
			]
			required: true
			choices: ["present", "started", "stopped", "restarted", "monitored", "unmonitored", "reloaded"]
		}
		timeout: {
			description: [
				"If there are pending actions for the service monitored by monit, then Ansible will check for up to this many seconds to verify the requested action has been performed. Ansible will sleep for five seconds between each check.",
			]

			default:       300
			version_added: "2.1"
		}
	}
	author: "Darryl Stoflet (@dstoflet)"
}
