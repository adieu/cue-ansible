package ansible

module: pn_dscp_map: {
	module:            "pn_dscp_map"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to create/delete dscp-map"
	description: [
		"This module can be used to create a DSCP priority mapping table.",
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
				"State the action to perform. Use C(present) to create dscp-map and C(absent) to delete.",
			]

			required: true
			type:     "str"
			choices: ["present", "absent"]
		}
		pn_name: {
			description: [
				"Name for the DSCP map.",
			]
			required: false
			type:     "str"
		}
		pn_scope: {
			description: [
				"Scope for dscp map.",
			]
			required: false
			choices: ["local", "fabric"]
		}
	}
}
