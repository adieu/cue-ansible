package ansible

module: nxos_l3_interface: {
	module:            "nxos_l3_interface"
	version_added:     "2.5"
	author:            "Trishna Guha (@trishnaguha)"
	short_description: "Manage L3 interfaces on Cisco NXOS network devices"
	description: [
		"This module provides declarative management of L3 interfaces on Cisco NXOS network devices.",
	]

	deprecated: {
		removed_in:  "2.13"
		alternative: "nxos_l3_interfaces"
		why:         "Updated modules released with more functionality"
	}
	notes: [
		"Tested against NXOSv 7.0(3)I5(1).",
	]
	options: {
		name: description: [
			"Name of the L3 interface.",
		]
		ipv4: description: [
			"IPv4 of the L3 interface.",
		]
		ipv6: description: [
			"IPv6 of the L3 interface.",
		]
		aggregate: description: "List of L3 interfaces definitions."
		state: {
			description: [
				"State of the L3 interface configuration.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "nxos"
}
