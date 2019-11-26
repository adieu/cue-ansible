package ansible

module: pn_port_cos_rate_setting: {
	module:            "pn_port_cos_rate_setting"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to modify port-cos-rate-setting"
	description: [
		"This modules can be used to update the port cos rate limit.",
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
				"State the action to perform. Use C(update) to modify the port-cos-rate-setting.",
			]

			required: true
			type:     "str"
			choices: ["update"]
		}
		pn_cos0_rate: {
			description: [
				"cos0 rate limit (pps) unlimited or 0 to 10000000.",
			]
			required: false
			type:     "str"
		}
		pn_cos1_rate: {
			description: [
				"cos1 rate limit (pps) unlimited or 0 to 10000000.",
			]
			required: false
			type:     "str"
		}
		pn_cos2_rate: {
			description: [
				"cos2 rate limit (pps) unlimited or 0 to 10000000.",
			]
			required: false
			type:     "str"
		}
		pn_cos3_rate: {
			description: [
				"cos3 rate limit (pps) unlimited or 0 to 10000000.",
			]
			required: false
			type:     "str"
		}
		pn_cos4_rate: {
			description: [
				"cos4 rate limit (pps) unlimited or 0 to 10000000.",
			]
			required: false
			type:     "str"
		}
		pn_cos5_rate: {
			description: [
				"cos5 rate limit (pps) unlimited or 0 to 10000000.",
			]
			required: false
			type:     "str"
		}
		pn_cos6_rate: {
			description: [
				"cos6 rate limit (pps) unlimited or 0 to 10000000.",
			]
			required: false
			type:     "str"
		}
		pn_cos7_rate: {
			description: [
				"cos7 rate limit (pps) unlimited or 0 to 10000000.",
			]
			required: false
			type:     "str"
		}
		pn_port: {
			description: [
				"port.",
			]
			required: false
			type:     "str"
			choices: ["control-port", "data-port", "span-ports"]
		}
	}
}
