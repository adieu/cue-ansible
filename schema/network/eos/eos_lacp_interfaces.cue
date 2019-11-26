package ansible

module: eos_lacp_interfaces: {
	module:            "eos_lacp_interfaces"
	version_added:     2.9
	short_description: "Manage Link Aggregation Control Protocol (LACP) attributes of interfaces on Arista EOS devices."
	description: [
		"This module manages Link Aggregation Control Protocol (LACP) attributes of interfaces on Arista EOS devices.",
	]
	author: "Nathaniel Case (@Qalthos)"
	notes: [
		"Tested against Arista EOS 4.20.10M",
		"This module works with connection C(network_cli). See the L(EOS Platform Options,../network/user_guide/platform_eos.html).",
	]

	options: {
		config: {
			description: "A dictionary of LACP interfaces options."
			type:        "list"
			elements:    "dict"
			suboptions: {
				name: {
					description: [
						"Full name of the interface (i.e. Ethernet1).",
					]
					type: "str"
				}
				port_priority: {
					description: [
						"LACP port priority for the interface. Range 1-65535.",
					]
					type: "int"
				}
				rate: {
					description: [
						"Rate at which PDUs are sent by LACP. At fast rate LACP is transmitted once every 1 second. At normal rate LACP is transmitted every 30 seconds after the link is bundled.",
					]

					type: "str"
					choices: ["fast", "normal"]
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
