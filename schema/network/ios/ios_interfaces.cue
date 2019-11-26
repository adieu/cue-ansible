package ansible

module: ios_interfaces: {
	module:            "ios_interfaces"
	version_added:     2.9
	short_description: "Manages interface attributes of Cisco IOS network devices"
	description:       "This module manages the interface attributes of Cisco IOS network devices."
	author:            "Sumit Jaiswal (@justjais)"
	notes: [
		"Tested against Cisco IOSv Version 15.2 on VIRL",
		"This module works with connection C(network_cli). See L(IOS Platform Options,../network/user_guide/platform_ios.html).",
	]

	options: {
		config: {
			description: "A dictionary of interface options"
			type:        "list"
			suboptions: {
				name: {
					description: [
						"Full name of interface, e.g. GigabitEthernet0/2, loopback999.",
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
				enabled: {
					description: [
						"Administrative state of the interface.",
						"Set the value to C(true) to administratively enable the interface or C(false) to disable it.",
					]
					type:    "bool"
					default: true
				}
				speed: {
					description: [
						"Interface link speed. Applicable for Ethernet interfaces only.",
					]
					type: "str"
				}
				mtu: {
					description: [
						"MTU for a specific interface. Applicable for Ethernet interfaces only.",
						"Refer to vendor documentation for valid values.",
					]
					type: "int"
				}
				duplex: {
					description: [
						"Interface link status. Applicable for Ethernet interfaces only, either in half duplex, full duplex or in automatic state which negotiates the duplex automatically.",
					]

					type: "str"
					choices: ["full", "half", "auto"]
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
}
