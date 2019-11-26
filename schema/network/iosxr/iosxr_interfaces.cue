package ansible

module: iosxr_interfaces: {
	module:            "iosxr_interfaces"
	version_added:     2.9
	short_description: "Manage interface attributes on Cisco IOS-XR network devices"
	description:       "This module manages the interface attributes on Cisco IOS-XR network devices."
	author:            "Sumit Jaiswal (@justjais)"
	notes: [
		"Tested against Cisco IOS-XRv Version 6.1.3 on VIRL.",
		"This module works with connection C(network_cli). See L(the IOS-XR Platform Options,../network/user_guide/platform_iosxr.html).",
	]
	options: {
		config: {
			description: "A dictionary of interface options"
			type:        "list"
			elements:    "dict"
			suboptions: {
				name: {
					description: [
						"Full name of the interface to configure in C(type + path) format. e.g. C(GigabitEthernet0/0/0/0)",
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
					default: true
					description: [
						"Administrative state of the interface.",
						"Set the value to C(True) to administratively enable the interface or C(False) to disable it.",
					]
					type: "bool"
				}
				speed: {
					description: [
						"Configure the speed for an interface. Default is auto-negotiation when not configured.",
					]
					type: "int"
				}
				mtu: {
					description: [
						"Sets the MTU value for the interface. Applicable for Ethernet interfaces only.",
						"Refer to vendor documentation for valid values.",
					]
					type: "int"
				}
				duplex: {
					description: [
						"Configures the interface duplex mode. Default is auto-negotiation when not configured.",
					]
					type: "str"
					choices: ["full", "half"]
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
