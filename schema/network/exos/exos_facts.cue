package ansible

module: exos_facts: {
	module:        "exos_facts"
	version_added: "2.7"
	author: [
		"Lance Richardson (@hlrichardson)",
		"Ujwal Koamrla (@ujwalkomarla)",
	]
	short_description: "Collect facts from devices running Extreme EXOS"
	description: [
		"Collects a base set of device facts from a remote device that is running EXOS.  This module prepends all of the base network fact keys with C(ansible_net_<fact>).  The facts module will always collect a base set of facts from the device and can enable or disable collection of additional facts.",
	]

	notes: [
		"Tested against EXOS 22.5.1.7",
	]
	options: {
		gather_subset: {
			description: [
				"When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.",
			]

			required: false
			type:     "list"
			default: ["!config"]
		}
		gather_network_resources: {
			description: [
				"When supplied, this argument will restrict the facts collected to a given subset. Possible values for this argument include all and the resources like interfaces, vlans etc. Can specify a list of values to include a larger subset. Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected. Valid subsets are 'all', 'lldp_global'.",
			]

			type:          "list"
			version_added: "2.9"
		}
	}
}
