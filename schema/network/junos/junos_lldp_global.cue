package ansible

module: junos_lldp_global: {
	module:            "junos_lldp_global"
	version_added:     2.9
	short_description: "Manage link layer discovery protocol (LLDP) attributes on Juniper JUNOS devices."
	description: [
		"This module manages link layer discovery protocol (LLDP) attributes on Juniper JUNOS devices.",
	]
	author: "Ganesh Nalawade (@ganeshrn)"
	options: {
		config: {
			description: "The list of link layer discovery protocol attribute configurations"
			type:        "dict"
			suboptions: {
				enabled: {
					description: [
						"This argument is a boolean value to enabled or disable LLDP.",
					]
					type: "bool"
				}
				interval: {
					description: [
						"Frequency at which LLDP advertisements are sent (in seconds).",
					]
					type: "int"
				}
				address: {
					description: [
						"This argument sets the management address from LLDP.",
					]
					type: "str"
				}
				transmit_delay: {
					description: [
						"Specify the number of seconds the device waits before sending advertisements to neighbors after a change is made in local system.",
					]

					type: "int"
				}
				hold_multiplier: {
					description: [
						"Specify the number of seconds that LLDP information is held before it is discarded. The multiplier value is used in combination with the C(interval) value.",
					]

					type: "int"
				}
			}
		}
		state: {
			description: [
				"The state of the configuration after module completion.",
			]
			type: "str"
			choices: [
				"merged",
				"replaced",
				"deleted",
			]
			default: "merged"
		}
	}
	requirements: [
		"ncclient (>=v0.6.4)",
	]
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Tested against vSRX JUNOS version 18.4R1.",
		"This module works with connection C(netconf). See L(the Junos OS Platform Options,../network/user_guide/platform_junos.html).",
	]
}
