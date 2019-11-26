package ansible

module: systemd: {
	module: "systemd"
	author: [
		"Ansible Core Team",
	]
	version_added:     "2.2"
	short_description: "Manage services"
	description: [
		"Controls systemd services on remote hosts.",
	]
	options: {
		name: {
			description: [
				"Name of the service. This parameter takes the name of exactly one service to work with.",
				"When using in a chroot environment you always need to specify the full name i.e. (crond.service).",
			]
			aliases: ["service", "unit"]
		}
		state: {
			description: [
				"C(started)/C(stopped) are idempotent actions that will not run commands unless necessary. C(restarted) will always bounce the service. C(reloaded) will always reload.",
			]

			choices: ["reloaded", "restarted", "started", "stopped"]
		}
		enabled: {
			description: [
				"Whether the service should start on boot. B(At least one of state and enabled are required.)",
			]
			type: "bool"
		}
		force: {
			description: [
				"Whether to override existing symlinks.",
			]
			type:          "bool"
			version_added: 2.6
		}
		masked: {
			description: [
				"Whether the unit should be masked or not, a masked unit is impossible to start.",
			]
			type: "bool"
		}
		daemon_reload: {
			description: [
				"Run daemon-reload before doing any other operations, to make sure systemd has read any changes.",
				"When set to C(yes), runs daemon-reload even if the module does not start or stop anything.",
			]
			type:    "bool"
			default: false
			aliases: ["daemon-reload"]
		}
		daemon_reexec: {
			description: [
				"Run daemon_reexec command before doing any other operations, the systemd manager will serialize the manager state.",
			]
			type:    "bool"
			default: false
			aliases: ["daemon-reexec"]
			version_added: "2.8"
		}
		user: {
			description: [
				"(deprecated) run ``systemctl`` talking to the service manager of the calling user, rather than the service manager of the system.",
				"This option is deprecated and will eventually be removed in 2.11. The ``scope`` option should be used instead.",
			]
			type:    "bool"
			default: false
		}
		scope: {
			description: [
				"run systemctl within a given service manager scope, either as the default system scope (system), the current user's scope (user), or the scope of all users (global).",
				"For systemd to work with 'user', the executing user must have its own instance of dbus started (systemd requirement). The user dbus process is normally started during normal login, but not during the run of Ansible tasks. Otherwise you will probably get a 'Failed to connect to bus: no such file or directory' error.",
			]

			choices: ["system", "user", "global"]
			version_added: "2.7"
		}
		no_block: {
			description: [
				"Do not synchronously wait for the requested operation to finish. Enqueued job will continue without Ansible blocking on its completion.",
			]

			type:          "bool"
			default:       false
			version_added: "2.3"
		}
	}
	notes: [
		"Since 2.4, one of the following options is required 'state', 'enabled', 'masked', 'daemon_reload', ('daemon_reexec' since 2.8), and all except 'daemon_reload' (and 'daemon_reexec' since 2.8) also require 'name'.",
		"Before 2.4 you always required 'name'.",
		"Globs are not supported in name, i.e ``postgres*.service``.",
	]
	requirements: ["A system managed by systemd."]
}
