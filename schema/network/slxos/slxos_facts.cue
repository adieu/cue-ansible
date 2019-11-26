package ansible

module: slxos_facts: {
	module:            "slxos_facts"
	version_added:     "2.6"
	author:            "Lindsay Hill (@LindsayHill)"
	short_description: "Collect facts from devices running Extreme SLX-OS"
	description: [
		"Collects a base set of device facts from a remote device that is running SLX-OS.  This module prepends all of the base network fact keys with C(ansible_net_<fact>).  The facts module will always collect a base set of facts from the device and can enable or disable collection of additional facts.",
	]

	notes: [
		"Tested against SLX-OS 17s.1.02",
	]
	options: gather_subset: {
		description: [
			"When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.",
		]

		required: false
		default: ["!config"]
	}
}
