package ansible

module: pn_admin_session_timeout: {
	module:            "pn_admin_session_timeout"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to modify admin-session-timeout"
	description: [
		"This module can be used to modify admin session timeout.",
	]
	options: {
		pn_cliswitch: {
			description: [
				"Target switch to run the CLI on.",
			]
			required: false
			type:     "str"
		}
		state: {
			description: [
				"State the action to perform. C(update) to modify the admin-session-timeout.",
			]

			required: true
			type:     "str"
			choices: ["update"]
		}
		pn_timeout: {
			description: [
				"Maximum time to wait for user activity before terminating login session. Minimum should be 60s.",
			]

			required: false
			type:     "str"
		}
	}
}
