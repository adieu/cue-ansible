package ansible

module: exos_vlans: {
	module:            "exos_vlans"
	version_added:     "2.10"
	short_description: "Manage VLANs on Extreme Networks EXOS devices."
	description:       "This module provides declarative management of VLANs on Extreme Networks EXOS network devices."
	author:            "Jayalakshmi Viswanathan (@jayalakshmiV)"
	notes: [
		"Tested against EXOS 30.2.1.8",
		"This module works with connection C(httpapi). See L(EXOS Platform Options,../network/user_guide/platform_exos.html)",
	]

	options: {
		config: {
			description: "A dictionary of VLANs options"
			type:        "list"
			elements:    "dict"
			suboptions: {
				name: {
					description: [
						"Ascii name of the VLAN.",
					]
					type: "str"
				}
				vlan_id: {
					description: [
						"ID of the VLAN. Range 1-4094",
					]
					type:     "int"
					required: true
				}
				state: {
					description: [
						"Operational state of the VLAN",
					]
					type: "str"
					choices: [
						"active",
						"suspend",
					]
					default: "active"
				}
			}
		}
		state: {
			description: [
				"The state the configuration should be left in",
			]
			type: "str"
			choices: [
				"merged",
				"replaced",
				"overridden",
				"deleted",
			]
			default: "merged"
		}
	}
}
