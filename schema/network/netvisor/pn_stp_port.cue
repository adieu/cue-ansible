package ansible

module: pn_stp_port: {
	module:            "pn_stp_port"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to modify stp-port."
	description: [
		"This module can be used modify Spanning Tree Protocol (STP) parameters on ports.",
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
				"State the action to perform. Use C(update) to update stp-port.",
			]
			type:     "str"
			required: true
			choices: ["update"]
		}
		pn_priority: {
			description: [
				"STP port priority from 0 to 240.",
			]
			type:    "str"
			default: "128"
		}
		pn_cost: {
			description: [
				"STP port cost from 1 to 200000000.",
			]
			type:    "str"
			default: "2000"
		}
		pn_root_guard: {
			description: [
				"STP port Root guard.",
			]
			type: "bool"
		}
		pn_filter: {
			description: [
				"STP port filters BPDUs.",
			]
			type: "bool"
		}
		pn_edge: {
			description: [
				"STP port is an edge port.",
			]
			type: "bool"
		}
		pn_bpdu_guard: {
			description: [
				"STP port BPDU guard.",
			]
			type: "bool"
		}
		pn_port: {
			description: [
				"STP port.",
			]
			type: "str"
		}
		pn_block: {
			description: [
				"Specify if a STP port blocks BPDUs.",
			]
			type: "bool"
		}
	}
}
