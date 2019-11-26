package ansible

module: junos_lldp: {
	module:            "junos_lldp"
	version_added:     "2.4"
	author:            "Ganesh Nalawade (@ganeshrn)"
	short_description: "Manage LLDP configuration on Juniper JUNOS network devices"
	description: [
		"This module provides declarative management of LLDP service on Juniper JUNOS network devices.",
	]

	deprecated: {
		removed_in:  "2.13"
		why:         "Updated modules released with more functionality"
		alternative: "Use M(junos_lldp_global) instead."
	}
	options: {
		interval: description: [
			"Frequency at which LLDP advertisements are sent (in seconds).",
		]
		transmit_delay: description: [
			"Specify the number of seconds the device waits before sending advertisements to neighbors after a change is made in local system.",
		]

		hold_multiplier: description: [
			"Specify the number of seconds that LLDP information is held before it is discarded. The multiplier value is used in combination with the C(interval) value.",
		]

		state: {
			description: [
				"Value of C(present) ensures given LLDP configuration is present on device and LLDP is enabled, for value of C(absent) LLDP configuration is deleted and LLDP is in disabled state. Value C(enabled) ensures LLDP protocol is enabled and LLDP configuration if any is configured on remote device, for value of C(disabled) it ensures LLDP protocol is disabled any LLDP configuration if any is still present.",
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
