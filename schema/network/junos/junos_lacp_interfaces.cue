package ansible

module: junos_lacp_interfaces: {
	module:            "junos_lacp_interfaces"
	version_added:     2.9
	short_description: "Manage Link Aggregation Control Protocol (LACP) attributes of interfaces on Juniper JUNOS devices."
	description: [
		"This module manages Link Aggregation Control Protocol (LACP) attributes of interfaces on Juniper JUNOS devices.",
	]
	author: "Ganesh Nalawade (@ganeshrn)"
	options: {
		config: {
			description: "The list of dictionaries of LACP interfaces options."
			type:        "list"
			elements:    "dict"
			suboptions: {
				name: {
					description: [
						"Name Identifier of the interface or link aggregation group.",
					]
					type: "str"
				}
				period: {
					description: [
						"Timer interval for periodic transmission of LACP packets. If the value is set to C(fast) the packets are received every second and if the value is C(slow) the packets are received every 30 seconds. This value is applicable for aggregate interface only.",
					]

					type: "str"
					choices: ["fast", "slow"]
				}
				sync_reset: {
					description: [
						"The argument notifies minimum-link failure out of sync to peer. If the value is C(disable) it disables minimum-link failure handling at LACP level and if value is C(enable) it enables minimum-link failure handling at LACP level. This value is applicable for aggregate interface only.",
					]

					type: "str"
					choices: ["disable", "enable"]
				}
				force_up: {
					description: [
						"This is a boolean argument to control if the port should be up in absence of received link Aggregation Control Protocol Data Unit (LACPDUS). This value is applicable for member interfaces only.",
					]

					type: "bool"
				}
				port_priority: {
					description: [
						"Priority of the member port. This value is applicable for member interfaces only.",
						"Refer to vendor documentation for valid values.",
					]
					type: "int"
				}
				system: {
					description: [
						"This dict object contains configurable options related to LACP system parameters for the link aggregation group. This value is applicable for aggregate interface only.",
					]

					type: "dict"
					suboptions: {
						priority: {
							description: [
								"Specifies the system priority to use in LACP negotiations for the bundle.",
								"Refer to vendor documentation for valid values.",
							]
							type: "int"
						}
						mac: {
							description: [
								"Specifies the system ID to use in LACP negotiations for the bundle, encoded as a MAC address.",
							]

							type: "dict"
							suboptions: address: {
								description: [
									"The system ID to use in LACP negotiations.",
								]
								type: "str"
							}
						}
					}
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
				"overridden",
				"deleted",
			]
			default: "merged"
		}
	}
}
