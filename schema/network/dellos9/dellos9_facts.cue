package ansible

module: dellos9_facts: {
	module:            "dellos9_facts"
	version_added:     "2.2"
	author:            "Dhivya P (@dhivyap)"
	short_description: "Collect facts from remote devices running Dell EMC Networking OS9"
	description: [
		"Collects a base set of device facts from a remote device that is running OS9.  This module prepends all of the base network fact keys with C(ansible_net_<fact>).  The facts module will always collect a base set of facts from the device and can enable or disable collection of additional facts.",
	]

	extends_documentation_fragment: "dellos9"
	options: gather_subset: {
		description: [
			"When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.",
		]

		default: ["!config"]
	}
	notes: [
		"This module requires OS9 version 9.10.0.1P13 or above.",
		"This module requires an increase of the SSH connection rate limit. Use the following command I(ip ssh connection-rate-limit 60) to configure the same. This can be also be done with the M(dellos9_config) module.",
	]
}
