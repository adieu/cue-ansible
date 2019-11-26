package ansible

module: pn_user: {
	module:            "pn_user"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to create/modify/delete user"
	description: [
		"This module can be used to create a user and apply a role, update a user and delete a user.",
	]

	options: {
		pn_cliswitch: {
			description: [
				"Target switch to run the CLI on.",
			]
			type:     "str"
			required: false
		}
		state: {
			description: [
				"State the action to perform. Use C(present) to create user and C(absent) to delete user C(update) to update user.",
			]

			type:     "str"
			required: true
			choices: ["present", "absent", "update"]
		}
		pn_scope: {
			description: [
				"local or fabric.",
			]
			type: "str"
			choices: ["local", "fabric"]
		}
		pn_initial_role: {
			description: [
				"initial role for user.",
			]
			type: "str"
		}
		pn_password: {
			description: [
				"plain text password.",
			]
			type: "str"
		}
		pn_name: {
			description: [
				"username.",
			]
			type: "str"
		}
	}
}
