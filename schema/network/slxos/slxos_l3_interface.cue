package ansible

module: slxos_l3_interface: {
	module:            "slxos_l3_interface"
	version_added:     "2.6"
	author:            "Matthew Stone (@bigmstone)"
	short_description: "Manage L3 interfaces on Extreme Networks SLX-OS network devices."
	description: [
		"This module provides declarative management of L3 interfaces on slxos network devices.",
	]

	notes: [
		"Tested against slxos 15.2",
	]
	options: {
		name: description: [
			"Name of the L3 interface to be configured eg. Ethernet 0/2",
		]
		ipv4: description: [
			"IPv4 address to be set for the L3 interface mentioned in I(name) option. The address format is <ipv4 address>/<mask>, the mask is number in range 0-32 eg. 192.168.0.1/24",
		]

		ipv6: description: [
			"IPv6 address to be set for the L3 interface mentioned in I(name) option. The address format is <ipv6 address>/<mask>, the mask is number in range 0-128 eg. fd5d:12c9:2201:1::1/64",
		]

		aggregate: description: [
			"List of L3 interfaces definitions. Each of the entry in aggregate list should define name of interface C(name) and a optional C(ipv4) or C(ipv6) address.",
		]

		state: {
			description: [
				"State of the L3 interface configuration. It indicates if the configuration should be present or absent on remote device.",
			]

			default: "present"
			choices: ["present", "absent"]
		}
	}
}
