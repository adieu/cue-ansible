package ansible

module: pn_vrouter_ospf: {
	module:            "pn_vrouter_ospf"
	author:            "Pluribus Networks (@rajaspachipulusu17)"
	version_added:     "2.9"
	short_description: "CLI command to add/remove vrouter-ospf"
	description: [
		"This module can be used to add OSPF protocol to vRouter and remove OSPF protocol from a vRouter",
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
				"vrouter-ospf configuration command.",
			]
			required: false
			type:     "str"
			choices: ["present", "absent"]
			default: "present"
		}
		pn_netmask: {
			description: [
				"OSPF network IP address netmask.",
			]
			required: false
			type:     "str"
		}
		pn_ospf_area: {
			description: [
				"stub area number for the configuration.",
			]
			required: false
			type:     "str"
		}
		pn_network: {
			description: [
				"OSPF network IP address.",
			]
			required: true
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
