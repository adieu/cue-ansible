package ansible

module: win_service: {
	module:            "win_service"
	version_added:     "1.7"
	short_description: "Manage and query Windows services"
	description: [
		"Manage and query Windows services.",
		"For non-Windows targets, use the M(service) module instead.",
	]
	options: {
		dependencies: {
			description: [
				"A list of service dependencies to set for this particular service.",
				"This should be a list of service names and not the display name of the service.",
				"This works by C(dependency_action) to either add/remove or set the services in this list.",
			]

			type:          "list"
			version_added: "2.3"
		}
		dependency_action: {
			description: [
				"Used in conjunction with C(dependency) to either add the dependencies to the existing service dependencies.",
				"Remove the dependencies to the existing dependencies.",
				"Set the dependencies to only the values in the list replacing the existing dependencies.",
			]

			type: "str"
			choices: ["add", "remove", "set"]
			default:       "set"
			version_added: "2.3"
		}
		desktop_interact: {
			description: [
				"Whether to allow the service user to interact with the desktop.",
				"This should only be set to C(yes) when using the C(LocalSystem) username.",
			]
			type:          "bool"
			default:       false
			version_added: "2.3"
		}
		description: {
			description: [
				"The description to set for the service.",
			]
			type:          "str"
			version_added: "2.3"
		}
		display_name: {
			description: [
				"The display name to set for the service.",
			]
			type:          "str"
			version_added: "2.3"
		}
		force_dependent_services: {
			description: [
				"If C(yes), stopping or restarting a service with dependent services will force the dependent services to stop or restart also.",
				"If C(no), stopping or restarting a service with dependent services may fail.",
			]

			type:          "bool"
			default:       false
			version_added: "2.3"
		}
		name: {
			description: [
				"Name of the service.",
				"If only the name parameter is specified, the module will report on whether the service exists or not without making any changes.",
			]

			required: true
			type:     "str"
		}
		path: {
			description: [
				"The path to the executable to set for the service.",
			]
			type:          "str"
			version_added: "2.3"
		}
		password: {
			description: [
				"The password to set the service to start as.",
				"This and the C(username) argument must be supplied together.",
				"If specifying C(LocalSystem), C(NetworkService) or C(LocalService) this field must be an empty string and not null.",
			]

			type:          "str"
			version_added: "2.3"
		}
		start_mode: {
			description: [
				"Set the startup type for the service.",
				"A newly created service will default to C(auto).",
				"C(delayed) added in Ansible 2.3",
			]
			type: "str"
			choices: ["auto", "delayed", "disabled", "manual"]
		}
		state: {
			description: [
				"The desired state of the service.",
				"C(started)/C(stopped)/C(absent)/C(paused) are idempotent actions that will not run commands unless necessary.",
				"C(restarted) will always bounce the service.",
				"C(absent) was added in Ansible 2.3",
				"C(paused) was added in Ansible 2.4",
				"Only services that support the paused state can be paused, you can check the return value C(can_pause_and_continue).",
				"You can only pause a service that is already started.",
				"A newly created service will default to C(stopped).",
			]
			type: "str"
			choices: ["absent", "paused", "started", "stopped", "restarted"]
		}
		username: {
			description: [
				"The username to set the service to start as.",
				"This and the C(password) argument must be supplied together when using a local or domain account.",
				"Set to C(LocalSystem) to use the SYSTEM account.",
				"A newly created service will default to C(LocalSystem).",
				"If using a custom user account, it must have the C(SeServiceLogonRight) granted to be able to start up. You can use the M(win_user_right) module to grant this user right for you.",
			]

			type:          "str"
			version_added: "2.3"
		}
	}
	seealso: [{
		module: "service"
	}, {
		module: "win_nssm"
	}, {
		module: "win_user_right"
	}]
	author: ["Chris Hoffman (@chrishoffman)"]
}
