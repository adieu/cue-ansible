package ansible

module: pn_cpu_class: {
	module:            "pn_cpu_class"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to create/modify/delete cpu-class"
	description: [
		"This module can be used to create, modify and delete CPU class information.",
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
				"State the action to perform. Use C(present) to create cpu-class and C(absent) to delete cpu-class C(update) to modify the cpu-class.",
			]

			required: true
			type:     "str"
			choices: ["present", "absent", "update"]
		}
		pn_scope: {
			description: [
				"scope for CPU class.",
			]
			required: false
			choices: ["local", "fabric"]
		}
		pn_hog_protect: {
			description: [
				"enable host-based hog protection.",
			]
			required: false
			type:     "str"
			choices: ["disable", "enable", "enable-and-drop"]
		}
		pn_rate_limit: {
			description: [
				"rate-limit for CPU class.",
			]
			required: false
			type:     "str"
		}
		pn_name: {
			description: [
				"name for the CPU class.",
			]
			required: false
			type:     "str"
		}
	}
}
