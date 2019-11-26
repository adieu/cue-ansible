package ansible

module: onyx_facts: {
	module:            "onyx_facts"
	version_added:     "2.5"
	author:            "Waleed Mousa (@waleedym), Samer Deeb (@samerd)"
	short_description: "Collect facts from Mellanox ONYX network devices"
	description: [
		"Collects a base set of device facts from a ONYX Mellanox network devices This module prepends all of the base network fact keys with C(ansible_net_<fact>).  The facts module will always collect a base set of facts from the device and can enable or disable collection of additional facts.",
	]

	notes: [
		"Tested against ONYX 3.6",
	]
	options: gather_subset: {
		description: [
			"When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, version, module, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.",
		]

		required: false
		default:  "version"
	}
}
