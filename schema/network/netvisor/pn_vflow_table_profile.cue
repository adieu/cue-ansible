package ansible

module: pn_vflow_table_profile: {
	module:            "pn_vflow_table_profile"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to modify vflow-table-profile"
	description: [
		"This module can be used to modify a vFlow table profile.",
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
				"State the action to perform. Use C(update) to modify the vflow-table-profile.",
			]

			required: true
			type:     "str"
			choices: ["update"]
		}
		pn_profile: {
			description: [
				"type of vFlow profile.",
			]
			required: false
			type:     "str"
			choices: ["application", "ipv6", "qos"]
		}
		pn_hw_tbl: {
			description: [
				"hardware table used by vFlow.",
			]
			required: false
			type:     "str"
			choices: ["switch-main", "switch-hash", "npu-main", "npu-hash"]
		}
		pn_enable: {
			description: [
				"enable or disable vflow profile table.",
			]
			required: false
			type:     "bool"
		}
	}
}
