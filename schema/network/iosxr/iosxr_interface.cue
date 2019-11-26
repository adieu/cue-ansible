package ansible

module: iosxr_interface: {
	module:        "iosxr_interface"
	version_added: "2.4"
	author: [
		"Ganesh Nalawade (@ganeshrn)",
		"Kedar Kekan (@kedarX)",
	]
	short_description: "Manage Interface on Cisco IOS XR network devices"
	description: [
		"This module provides declarative management of Interfaces on Cisco IOS XR network devices.",
	]

	deprecated: {
		removed_in:  "2.13"
		alternative: "iosxr_interfaces"
		why:         "Newer and updated modules released with more functionality in Ansible 2.9"
	}
	requirements: [
		"ncclient >= 0.5.3 when using netconf",
		"lxml >= 4.1.1 when using netconf",
	]
	extends_documentation_fragment: "iosxr"
	notes: [
		"This module works with connection C(network_cli) and C(netconf). See L(the IOS-XR Platform Options,../network/user_guide/platform_iosxr.html).",
		"Tested against IOS XRv 6.1.3.",
		"Preconfiguration of physical interfaces is not supported with C(netconf) transport.",
	]
	options: {
		name: {
			description: [
				"Name of the interface to configure in C(type + path) format. e.g. C(GigabitEthernet0/0/0/0)",
			]
			required: true
		}
		description: description: [
			"Description of Interface being configured.",
		]
		enabled: {
			description: [
				"Removes the shutdown configuration, which removes the forced administrative down on the interface, enabling it to move to an up or down state.",
			]

			type:    "bool"
			default: true
		}
		active: {
			description: [
				"Whether the interface is C(active) or C(preconfigured). Preconfiguration allows you to configure modular services cards before they are inserted into the router. When the cards are inserted, they are instantly configured. Active cards are the ones already inserted.",
			]

			choices: ["active", "preconfigure"]
			default:       "active"
			version_added: 2.5
		}
		speed: {
			description: [
				"Configure the speed for an interface. Default is auto-negotiation when not configured.",
			]
			choices: ["10", "100", "1000"]
		}
		mtu: description: [
			"Sets the MTU value for the interface. Range is between 64 and 65535'",
		]
		duplex: {
			description: [
				"Configures the interface duplex mode. Default is auto-negotiation when not configured.",
			]
			choices: ["full", "half"]
		}
		tx_rate: description: [
			"Transmit rate in bits per second (bps).",
			"This is state check parameter only.",
			"Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)",
		]
		rx_rate: description: [
			"Receiver rate in bits per second (bps).",
			"This is state check parameter only.",
			"Supports conditionals, see L(Conditionals in Networking Modules,../network/user_guide/network_working_with_command_output.html)",
		]
		aggregate: description: [
			"List of Interface definitions. Include multiple interface configurations together, one each on a separate line",
		]

		delay: {
			description: [
				"Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state argument which are I(state) with values C(up)/C(down), I(tx_rate) and I(rx_rate).",
			]

			default: 10
		}
		state: {
			description: [
				"State of the Interface configuration, C(up) means present and operationally up and C(down) means present and operationally C(down)",
			]

			default: "present"
			choices: ["present", "absent", "up", "down"]
		}
	}
}
