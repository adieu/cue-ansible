package ansible

module: pn_vrouter_bgp_network: {
	module:            "pn_vrouter_bgp_network"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to add/remove vrouter-bgp-network"
	description: [
		"This module can be used to add Border Gateway Protocol network to a vRouter and remove Border Gateway Protocol network from a vRouter.",
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
				"State the action to perform. Use C(present) to add bgp network and C(absent) to remove bgp network.",
			]

			required: true
			type:     "str"
			choices: ["present", "absent"]
		}
		pn_netmask: {
			description: [
				"BGP network mask.",
			]
			required: false
			type:     "str"
		}
		pn_network: {
			description: [
				"IP address for BGP network.",
			]
			required: false
			type:     "str"
		}
		pn_vrouter_name: {
			description: [
				"name of service config.",
			]
			required: false
			type:     "str"
		}
	}
}
