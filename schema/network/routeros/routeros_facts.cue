package ansible

module: routeros_facts: {
	module:            "routeros_facts"
	version_added:     "2.8"
	author:            "Egor Zaitsev (@heuels)"
	short_description: "Collect facts from remote devices running MikroTik RouterOS"
	description: [
		"Collects a base set of device facts from a remote device that is running RotuerOS.  This module prepends all of the base network fact keys with C(ansible_net_<fact>).  The facts module will always collect a base set of facts from the device and can enable or disable collection of additional facts.",
	]

	options: gather_subset: {
		description: [
			"When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include C(all), C(hardware), C(config), and C(interfaces).  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(!) to specify that a specific subset should not be collected.",
		]

		required: false
		default:  "!config"
	}
}
