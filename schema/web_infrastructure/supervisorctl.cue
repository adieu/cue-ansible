package ansible

module: supervisorctl: {
	module:            "supervisorctl"
	short_description: "Manage the state of a program or group of programs running via supervisord"
	description: [
		"Manage the state of a program or group of programs running via supervisord",
	]
	version_added: "0.7"
	options: {
		name: {
			description: [
				"The name of the supervisord program or group to manage.",
				"The name will be taken as group name when it ends with a colon I(:)",
				"Group support is only available in Ansible version 1.6 or later.",
			]
			required: true
		}
		config: {
			description: [
				"The supervisor configuration file path",
			]
			version_added: "1.3"
		}
		server_url: {
			description: [
				"URL on which supervisord server is listening",
			]
			version_added: "1.3"
		}
		username: {
			description: [
				"username to use for authentication",
			]
			version_added: "1.3"
		}
		password: {
			description: [
				"password to use for authentication",
			]
			version_added: "1.3"
		}
		state: {
			description: [
				"The desired state of program/group.",
			]
			required: true
			choices: ["present", "started", "stopped", "restarted", "absent", "signalled"]
		}
		signal: {
			description: [
				"The signal to send to the program/group, when combined with the 'signalled' state. Required when l(state=signalled).",
			]
			version_added: "2.8"
		}
		supervisorctl_path: {
			description: [
				"path to supervisorctl executable",
			]
			version_added: "1.4"
		}
	}
	notes: [
		"When C(state) = I(present), the module will call C(supervisorctl reread) then C(supervisorctl add) if the program/group does not exist.",
		"When C(state) = I(restarted), the module will call C(supervisorctl update) then call C(supervisorctl restart).",
		"When C(state) = I(absent), the module will call C(supervisorctl reread) then C(supervisorctl remove) to remove the target program/group.",
	]
	requirements: ["supervisorctl"]
	author: [
		"Matt Wright (@mattupstate)",
		"Aaron Wang (@inetfuture) <inetfuture@gmail.com>",
	]
}
