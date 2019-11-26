package ansible

module: iosxr_lldp_interfaces: {
	module:            "iosxr_lldp_interfaces"
	version_added:     2.9
	short_description: "Manage Link Layer Discovery Protocol (LLDP) attributes of interfaces on IOS-XR devices."
	description: [
		"This module manages Link Layer Discovery Protocol (LLDP) attributes of interfaces on IOS-XR devices.",
	]
	notes: [
		"Tested against IOS-XR 6.1.3.",
		"This module works with connection C(network_cli). See L(the IOS-XR Platform Options,../network/user_guide/platform_iosxr.html).",
	]
	author: "Nilashish Chakraborty (@nilashishc)"
	options: {
		config: {
			description: "A dictionary of LLDP interfaces options."
			type:        "list"
			elements:    "dict"
			suboptions: {
				name: {
					description: [
						"Name/Identifier of the interface or Ether-Bundle.",
					]
					type: "str"
				}
				destination: {
					description: [
						"Specifies LLDP destination configuration on the interface.",
					]
					suboptions: mac_address: {
						description: [
							"Specifies the LLDP destination mac address on the interface.",
						]
						type: "str"
						choices: ["ieee-nearest-bridge", "ieee-nearest-non-tmpr-bridge"]
					}
					type: "dict"
				}
				receive: {
					description: [
						"Enable/disable LLDP RX on an interface.",
					]
					type: "bool"
				}
				transmit: {
					description: [
						"Enable/disable LLDP TX on an interface.",
					]
					type: "bool"
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
