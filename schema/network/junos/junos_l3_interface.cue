package ansible

module: junos_l3_interface: {
	module:            "junos_l3_interface"
	version_added:     "2.4"
	author:            "Ganesh Nalawade (@ganeshrn)"
	short_description: "Manage L3 interfaces on Juniper JUNOS network devices"
	description: [
		"This module provides declarative management of L3 interfaces on Juniper JUNOS network devices.",
	]

	deprecated: {
		removed_in:  "2.13"
		why:         "Updated modules released with more functionality"
		alternative: "Use M(junos_l3_interfaces) instead."
	}
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
		unit: {
			description: [
				"Logical interface number.",
			]
			default: 0
		}
		filter_input: {
			description: [
				"The name of input filter.",
			]
			version_added: "2.8"
		}
		filter_output: {
			description: [
				"The name of output filter.",
			]
			version_added: "2.8"
		}
		filter6_input: {
			description: [
				"The name of input filter for ipv6.",
			]
			version_added: "2.8"
		}
		filter6_output: {
			description: [
				"The name of output filter for ipv6.",
			]
			version_added: "2.8"
		}
		aggregate: description: "List of L3 interfaces definitions"
		state: {
			description: [
				"State of the L3 interface configuration.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
		active: {
			description: [
				"Specifies whether or not the configuration is active or deactivated",
			]
			default: true
			type:    "bool"
		}
	}
	requirements: [
		"ncclient (>=v0.5.2)",
	]
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Tested against vSRX JUNOS version 15.1X49-D15.4, vqfx-10000 JUNOS Version 15.1X53-D60.4.",
		"Recommended connection is C(netconf). See L(the Junos OS Platform Options,../network/user_guide/platform_junos.html).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	extends_documentation_fragment: "junos"
}
