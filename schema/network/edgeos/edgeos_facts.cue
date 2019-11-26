package ansible

module: edgeos_facts: {
	module:        "edgeos_facts"
	version_added: "2.5"
	author: [
		"Nathaniel Case (@Qalthos)",
		"Sam Doran (@samdoran)",
	]
	short_description: "Collect facts from remote devices running EdgeOS"
	description: [
		"Collects a base set of device facts from a remote device that is running EdgeOS. This module prepends all of the base network fact keys with U(ansible_net_<fact>). The facts module will always collect a base set of facts from the device and can enable or disable collection of additional facts.",
	]

	notes: [
		"Tested against EdgeOS 1.9.7",
	]
	options: gather_subset: {
		description: [
			"When supplied, this argument will restrict the facts collected to a given subset. Possible values for this argument include all, default, config, and neighbors. Can specify a list of values to include a larger subset. Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.",
		]

		required: false
		default:  "!config"
	}
}
