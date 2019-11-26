package ansible

module: nxos_interfaces: {
	module:            "nxos_interfaces"
	version_added:     2.9
	short_description: "Manages interface attributes of NX-OS Interfaces"
	description:       "This module manages the interface attributes of NX-OS interfaces."
	author:            "Trishna Guha (@trishnaguha)"
	notes: [
		"Tested against NXOS 7.3.(0)D1(1) on VIRL",
	]
	options: {
		config: {
			description: "A dictionary of interface options"
			type:        "list"
			elements:    "dict"
			suboptions: {
				name: {
					description: [
						"Full name of interface, e.g. Ethernet1/1, port-channel10.",
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
						"Administrative state of the interface. Set the value to C(true) to administratively enable the interface or C(false) to disable it",
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
				mode: {
					description: [
						"Manage Layer2 or Layer3 state of the interface. Applicable for Ethernet and port channel interfaces only.",
					]

					choices: ["layer2", "layer3"]
					type: "str"
				}
				mtu: {
					description: [
						"MTU for a specific interface. Must be an even number between 576 and 9216. Applicable for Ethernet interfaces only.",
					]

					type: "str"
				}
				duplex: {
					description: [
						"Interface link status. Applicable for Ethernet interfaces only.",
					]
					type: "str"
					choices: ["full", "half", "auto"]
				}
				ip_forward: {
					description: [
						"Enable or disable IP forward feature on SVIs. Set the value to C(true) to enable  or C(false) to disable.",
					]

					type: "bool"
				}
				fabric_forwarding_anycast_gateway: {
					description: [
						"Associate SVI with anycast gateway under VLAN configuration mode. Applicable for SVI interfaces only.",
					]

					type: "bool"
				}
			}
		}

		state: {
			description: [
				"The state of the configuration after module completion",
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
