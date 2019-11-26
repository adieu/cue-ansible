package ansible

module: pn_prefix_list_network: {
	module:            "pn_prefix_list_network"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to add/remove prefix-list-network"
	description: [
		"This module is used to add network associated with prefix list and remove networks associated with prefix list.",
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
				"State the action to perform. Use C(present) to create prefix-list-network and C(absent) to delete prefix-list-network.",
			]

			required: true
			type:     "str"
			choices: ["present", "absent"]
		}
		pn_netmask: {
			description: [
				"netmask of the network associated the prefix list.",
			]
			required: false
			type:     "str"
		}
		pn_name: {
			description: [
				"Prefix List Name.",
			]
			required: false
			type:     "str"
		}
		pn_network: {
			description: [
				"network associated with the prefix list.",
			]
			required: false
			type:     "str"
		}
	}
}
