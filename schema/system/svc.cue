package ansible

module: svc: {
	module: "svc"
	author: [
		"Brian Coca (@bcoca)",
	]
	version_added:     "1.9"
	short_description: "Manage daemontools services"
	description: [
		"Controls daemontools services on remote hosts using the svc utility.",
	]
	options: {
		name: {
			description: [
				"Name of the service to manage.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"C(Started)/C(stopped) are idempotent actions that will not run commands unless necessary.  C(restarted) will always bounce the svc (svc -t) and C(killed) will always bounce the svc (svc -k). C(reloaded) will send a sigusr1 (svc -1). C(once) will run a normally downed svc once (svc -o), not really an idempotent operation.",
			]

			type: "str"
			choices: ["killed", "once", "reloaded", "restarted", "started", "stopped"]
		}
		downed: {
			description: [
				"Should a 'down' file exist or not, if it exists it disables auto startup. Defaults to no. Downed does not imply stopped.",
			]

			type:    "bool"
			default: false
		}
		enabled: {
			description: [
				"Whether the service is enabled or not, if disabled it also implies stopped. Take note that a service can be enabled and downed (no auto restart).",
			]

			type: "bool"
		}
		service_dir: {
			description: [
				"Directory svscan watches for services",
			]
			type:    "str"
			default: "/service"
		}
		service_src: {
			description: [
				"Directory where services are defined, the source of symlinks to service_dir.",
			]
			type:    "str"
			default: "/etc/service"
		}
	}
}
