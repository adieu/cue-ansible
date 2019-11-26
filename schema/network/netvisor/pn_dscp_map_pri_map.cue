package ansible

module: pn_dscp_map_pri_map: {
	module:            "pn_dscp_map_pri_map"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to modify dscp-map-pri-map"
	description: [
		"This module can be used to update priority mappings in tables.",
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
				"State the action to perform. Use C(update) to modify the dscp-map-pri-map.",
			]

			required: true
			type:     "str"
			choices: ["update"]
		}
		pn_pri: {
			description: [
				"CoS priority.",
			]
			required: false
			type:     "str"
		}
		pn_name: {
			description: [
				"Name for the DSCP map.",
			]
			required: false
			type:     "str"
		}
		pn_dsmap: {
			description: [
				"DSCP value(s).",
			]
			required: false
			type:     "str"
		}
	}
}
