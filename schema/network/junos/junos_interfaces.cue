package ansible

module: junos_interfaces: {
	module:            "junos_interfaces"
	version_added:     2.9
	short_description: "Manages interface attributes of Juniper Junos OS network devices."
	description:       "This module manages the interfaces on Juniper Junos OS network devices."
	author:            "Ganesh Nalawade (@ganeshrn)"
	options: {
		config: {
			description: "The provided configuration"
			type:        "list"
			suboptions: {
				name: {
					description: [
						"Full name of interface, e.g. ge-0/0/0.",
					]
					type:     "str"
					required: true
				}
				description: {
					description: [
						"Interface description.",
					]
					type: "str"
				}
				duplex: {
					description: [
						"Interface link status. Applicable for Ethernet interfaces only, either in half duplex, full duplex or in automatic state which negotiates the duplex automatically.",
					]

					type: "str"
					choices: ["automatic", "full-duplex", "half-duplex"]
				}
				enabled: {
					default: true
					description: [
						"Administrative state of the interface.",
						"Set the value to C(true) to administratively enabled the interface or C(false) to disable it.",
					]
					type: "bool"
				}
				hold_time: {
					description: [
						"The hold time for given interface name.",
					]
					type: "dict"
					suboptions: {
						down: {
							description: [
								"The link down hold time in milliseconds.",
							]
							type: "int"
						}
						up: {
							description: [
								"The link up hold time in milliseconds.",
							]
							type: "int"
						}
					}
				}
				mtu: {
					description: [
						"MTU for a specific interface.",
						"Applicable for Ethernet interfaces only.",
					]
					type: "int"
				}
				speed: {
					description: [
						"Interface link speed. Applicable for Ethernet interfaces only.",
					]
					type: "int"
				}
			}
		}
		state: {
			choices: [
				"merged",
				"replaced",
				"overridden",
				"deleted",
			]
			default: "merged"
			description: [
				"The state of the configuration after module completion",
			]
			type: "str"
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
