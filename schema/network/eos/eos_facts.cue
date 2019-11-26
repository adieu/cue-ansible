package ansible

module: eos_facts: {
	module:        "eos_facts"
	version_added: "2.2"
	author: [
		"Peter Sprygada (@privateip)",
		"Nathaniel Case (@Qalthos)",
	]
	short_description: "Collect facts from remote devices running Arista EOS"
	description: [
		"Collects facts from Arista devices running the EOS operating system. This module places the facts gathered in the fact tree keyed by the respective resource name.  The facts module will always collect a base set of facts from the device and can enable or disable collection of additional facts.",
	]

	extends_documentation_fragment: "eos"
	options: {
		gather_subset: {
			description: [
				"When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.",
			]

			required: false
			type:     "list"
			default:  "!config"
		}
		gather_network_resources: {
			description: [
				"When supplied, this argument will restrict the facts collected to a given subset. Possible values for this argument include all and the resources like interfaces, vlans etc. Can specify a list of values to include a larger subset. Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected. Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected. Valid subsets are 'all', 'interfaces', 'l2_interfaces', 'l3_interfaces', 'lacp', 'lacp_interfaces', 'lag_interfaces', 'lldp_global', 'lldp_interfaces', 'vlans'.",
			]

			required:      false
			type:          "list"
			version_added: "2.9"
		}
	}
}
