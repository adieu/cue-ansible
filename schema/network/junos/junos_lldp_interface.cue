package ansible

module: junos_lldp_interface: {
	module:            "junos_lldp_interface"
	version_added:     "2.4"
	author:            "Ganesh Nalawade (@ganeshrn)"
	short_description: "Manage LLDP interfaces configuration on Juniper JUNOS network devices"
	description: [
		"This module provides declarative management of LLDP interfaces configuration on Juniper JUNOS network devices.",
	]

	deprecated: {
		removed_in:  "2.13"
		why:         "Updated modules released with more functionality"
		alternative: "Use M(junos_lldp_interfaces) instead."
	}
	options: {
		name: description: [
			"Name of the interface LLDP should be configured on.",
		]
		state: {
			description: [
				"Value of C(present) ensures given LLDP configured on given I(interfaces) and is enabled, for value of C(absent) LLDP configuration on given I(interfaces) deleted. Value C(enabled) ensures LLDP protocol is enabled on given I(interfaces) and for value of C(disabled) it ensures LLDP is disabled on given I(interfaces).",
			]

			default: "present"
			choices: ["present", "absent", "enabled", "disabled"]
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
