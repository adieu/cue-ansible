package ansible

module: pn_vrouter_loopback_interface: {
	module:            "pn_vrouter_loopback_interface"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.9"
	short_description: "CLI command to add/remove vrouter-loopback-interface"
	description: [
		"This module can be used to add loopback interface to a vRouter or remove loopback interface from a vRouter.",
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
				"State the action to perform. Use C(present) to add vrouter-loopback-interface and C(absent) to remove vrouter-loopback-interface.",
			]

			required: false
			type:     "str"
			choices: ["present", "absent"]
			default: "present"
		}
		pn_ip: {
			description: [
				"loopback IP address.",
			]
			required: true
			type:     "str"
		}
		pn_index: {
			description: [
				"loopback index from 1 to 255.",
			]
			required: false
			type:     "str"
		}
		pn_vrouter_name: {
			description: [
				"name of service config.",
			]
			required: true
			type:     "str"
		}
	}
}
