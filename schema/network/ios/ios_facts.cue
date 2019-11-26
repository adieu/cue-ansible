package ansible

module: ios_facts: {
	module:        "ios_facts"
	version_added: "2.2"
	author: [
		"Peter Sprygada (@privateip)",
		"Sumit Jaiswal (@justjais)",
	]
	short_description: "Collect facts from remote devices running Cisco IOS"
	description: [
		"Collects a base set of device facts from a remote device that is running IOS.  This module prepends all of the base network fact keys with C(ansible_net_<fact>).  The facts module will always collect a base set of facts from the device and can enable or disable collection of additional facts.",
	]

	extends_documentation_fragment: "ios"
	notes: [
		"Tested against IOS 15.6",
	]
	options: {
		gather_subset: {
			description: [
				"When supplied, this argument restricts the facts collected to a given subset.",
				"Possible values for this argument include C(all), C(min), C(hardware), C(config), and C(interfaces).",
				"Specify a list of values to include a larger subset.",
				"Use a value with an initial C(!) to collect all facts except that subset.",
			]
			required: false
			default:  "!config"
		}
		gather_network_resources: {
			description: [
				"When supplied, this argument will restrict the facts collected to a given subset. Possible values for this argument include all and the resources like interfaces, vlans etc. Can specify a list of values to include a larger subset. Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected. Valid subsets are 'all', 'interfaces', 'l2_interfaces', 'vlans', 'lag_interfaces', 'lacp', 'lacp_interfaces', 'lldp_global', 'lldp_interfaces', 'l3_interfaces'.",
			]

			version_added: "2.9"
		}
	}
}
