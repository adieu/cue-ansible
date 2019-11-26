package ansible

module: service: {
	module:            "service"
	version_added:     "0.1"
	short_description: "Manage services"
	description: [
		"Controls services on remote hosts. Supported init systems include BSD init, OpenRC, SysV, Solaris SMF, systemd, upstart.",
		"For Windows targets, use the M(win_service) module instead.",
	]
	options: {
		name: {
			description: [
				"Name of the service.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"C(started)/C(stopped) are idempotent actions that will not run commands unless necessary.",
				"C(restarted) will always bounce the service.",
				"C(reloaded) will always reload.",
				"B(At least one of state and enabled are required.)",
				"Note that reloaded will start the service if it is not already started, even if your chosen init system wouldn't normally.",
			]

			type: "str"
			choices: ["reloaded", "restarted", "started", "stopped"]
		}
		sleep: {
			description: [
				"If the service is being C(restarted) then sleep this many seconds between the stop and start command.",
				"This helps to work around badly-behaving init scripts that exit immediately after signaling a process to stop.",
				"Not all service managers support sleep, i.e when using systemd this setting will be ignored.",
			]
			type:          "int"
			version_added: "1.3"
		}
		pattern: {
			description: [
				"If the service does not respond to the status command, name a substring to look for as would be found in the output of the I(ps) command as a stand-in for a status result.",
				"If the string is found, the service will be assumed to be started.",
			]
			type:          "str"
			version_added: "0.7"
		}
		enabled: {
			description: [
				"Whether the service should start on boot.",
				"B(At least one of state and enabled are required.)",
			]
			type: "bool"
		}
		runlevel: {
			description: [
				"For OpenRC init scripts (e.g. Gentoo) only.",
				"The runlevel that this service belongs to.",
			]
			type:    "str"
			default: "default"
		}
		arguments: {
			description: [
				"Additional arguments provided on the command line.",
			]
			type: "str"
			aliases: ["args"]
		}
		use: {
			description: [
				"The service module actually uses system specific modules, normally through auto detection, this setting can force a specific module.",
				"Normally it uses the value of the 'ansible_service_mgr' fact and falls back to the old 'service' module when none matching is found.",
			]
			type:          "str"
			default:       "auto"
			version_added: 2.2
		}
	}
	notes: [
		"For AIX, group subsystem names can be used.",
	]
	seealso: [{
		module: "win_service"
	}]
	author: [
		"Ansible Core Team",
		"Michael DeHaan",
	]
}
