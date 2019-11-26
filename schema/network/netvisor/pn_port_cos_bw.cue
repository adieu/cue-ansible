package ansible

module: pn_port_cos_bw: {
	module:            "pn_port_cos_bw"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to modify port-cos-bw"
	description: [
		"This module can be used to update bw settings for CoS queues.",
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
				"State the action to perform. Use C(update) to modify the port-cos-bw.",
			]
			required: true
			type:     "str"
			choices: ["update"]
		}
		pn_max_bw_limit: {
			description: [
				"Maximum b/w in percentage.",
			]
			required: false
			type:     "str"
		}
		pn_cos: {
			description: [
				"CoS priority.",
			]
			required: false
			type:     "str"
		}
		pn_port: {
			description: [
				"physical port number.",
			]
			required: false
			type:     "str"
		}
		pn_weight: {
			description: [
				"Scheduling weight (1 to 127) after b/w guarantee met.",
			]
			required: false
			type:     "str"
			choices: ["priority", "no-priority"]
		}
		pn_min_bw_guarantee: {
			description: [
				"Minimum b/w in percentage.",
			]
			required: false
			type:     "str"
		}
	}
}
