package ansible

module: nxos_facts: {
	module:                         "nxos_facts"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.1"
	short_description:              "Gets facts about NX-OS switches"
	description: [
		"Collects facts from Cisco Nexus devices running the NX-OS operating system.  Fact collection is supported over both Cli and Nxapi transports.  This module prepends all of the base network fact keys with C(ansible_net_<fact>).  The facts module will always collect a base set of facts from the device and can enable or disable collection of additional facts.",
	]

	author: [
		"Jason Edelman (@jedelman8)",
		"Gabriele Gerbino (@GGabriele)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
	]
	options: {
		gather_subset: {
			description: [
				"When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, legacy, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.",
			]

			required:      false
			default:       "!config"
			version_added: "2.2"
		}
		gather_network_resources: {
			description: [
				"When supplied, this argument will restrict the facts collected to a given subset. Possible values for this argument include all and the resources like interfaces, vlans etc. Can specify a list of values to include a larger subset. Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected. Valid subsets are 'all', 'bfd_interfaces', 'lag_interfaces', 'telemetry', 'vlans', 'lacp', 'lacp_interfaces', 'interfaces', 'l3_interfaces', 'l2_interfaces', 'lldp_global'.",
			]

			required:      false
			version_added: "2.9"
		}
	}
}
