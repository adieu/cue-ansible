package ansible

module: pn_vrouter_ospf6: {
	module:            "pn_vrouter_ospf6"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.8"
	short_description: "CLI command to add/remove vrouter-ospf6"
	description: [
		"This module can be used to add interface ip to OSPF6 protocol or remove interface ip from OSPF6 protocol on vRouter.",
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
				"State the action to perform. Use C(present) to add vrouter-ospf6 and C(absent) to remove interface from vrouter-ospf6.",
			]

			required: true
			type:     "str"
			choices: ["present", "absent"]
		}
		pn_ospf6_area: {
			description: [
				"area id for this interface in IPv4 address format.",
			]
			required: false
			type:     "str"
		}
		pn_nic: {
			description: [
				"OSPF6 control for this interface.",
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
