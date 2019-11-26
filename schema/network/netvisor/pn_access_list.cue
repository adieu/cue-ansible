package ansible

module: pn_access_list: {
	module:            "pn_access_list"
	author:            "Pluribus Networks (@amitsi)"
	version_added:     "2.8"
	short_description: "CLI command to create/delete access-list"
	description: [
		"This module can be used to create and delete an access list.",
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
				"State the action to perform. Use 'present' to create access-list and 'absent' to delete access-list.",
			]

			required: true
			choices: ["present", "absent"]
		}
		pn_name: {
			description: [
				"Access List Name.",
			]
			required: false
			type:     "str"
		}
		pn_scope: {
			description: [
				"scope. Available valid values - local or fabric.",
			]
			required: false
			choices: ["local", "fabric"]
		}
	}
}
