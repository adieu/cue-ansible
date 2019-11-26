package ansible

module: pn_dhcp_filter: {
	module:            "pn_dhcp_filter"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to create/modify/delete dhcp-filter"
	description: [
		"This module can be used to create, delete and modify a DHCP filter config.",
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
				"State the action to perform. Use C(present) to create dhcp-filter and C(absent) to delete dhcp-filter C(update) to modify the dhcp-filter.",
			]

			required: true
			type:     "str"
			choices: ["present", "absent", "update"]
		}
		pn_trusted_ports: {
			description: [
				"trusted ports of dhcp config.",
			]
			required: false
			type:     "str"
		}
		pn_name: {
			description: [
				"name of the DHCP filter.",
			]
			required: false
			type:     "str"
		}
	}
}
