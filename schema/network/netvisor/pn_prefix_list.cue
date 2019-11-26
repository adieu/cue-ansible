package ansible

module: pn_prefix_list: {
	module:            "pn_prefix_list"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.9"
	short_description: "CLI command to create/delete prefix-list"
	description: [
		"This module can be used to create or delete prefix list.",
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
				"State the action to perform. Use C(present) to create prefix-list and C(absent) to delete prefix-list.",
			]

			required: false
			type:     "str"
			choices: ["present", "absent"]
			default: "present"
		}
		pn_name: {
			description: [
				"Prefix List Name.",
			]
			required: true
			type:     "str"
		}
		pn_scope: {
			description: [
				"scope of prefix-list.",
			]
			required: false
			type:     "str"
			choices: ["local", "fabric"]
		}
	}
}
