package ansible

module: junos_interface: {
	module:            "junos_interface"
	version_added:     "2.4"
	author:            "Ganesh Nalawade (@ganeshrn)"
	short_description: "Manage Interface on Juniper JUNOS network devices"
	description: [
		"This module provides declarative management of Interfaces on Juniper JUNOS network devices.",
	]

	deprecated: {
		removed_in:  "2.13"
		why:         "Updated modules released with more functionality"
		alternative: "Use M(junos_interfaces) instead."
	}
	options: {
		name: {
			description: [
				"Name of the Interface.",
			]
			required: true
		}
		description: description: [
			"Description of Interface.",
		]
		enabled: {
			description: [
				"Configure interface link status.",
			]
			type: "bool"
		}
		speed: description: [
			"Interface link speed.",
		]
		mtu: description: [
			"Maximum size of transmit packet.",
		]
		duplex: {
			description: [
				"Interface link status.",
			]
			default: "auto"
			choices: ["full", "half", "auto"]
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
		neighbors: {
			description: [
				"Check the operational state of given interface C(name) for LLDP neighbor.",
				"The following suboptions are available.",
			]
			suboptions: {
				host: description: [
					"LLDP neighbor host for given interface C(name).",
				]
				port: description: [
					"LLDP neighbor port to which given interface C(name) is connected.",
				]
			}
		}
		delay: {
			description: [
				"Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state argument which are I(state) with values C(up)/C(down), I(tx_rate) and I(rx_rate).",
			]

			default: 10
		}
		aggregate: description: "List of Interfaces definitions."
		state: {
			description: [
				"State of the Interface configuration, C(up) indicates present and operationally up and C(down) indicates present and operationally C(down)",
			]

			default: "present"
			choices: ["present", "absent", "up", "down"]
		}
		active: {
			description: [
				"Specifies whether or not the configuration is active or deactivated",
			]
			default: true
			type:    "bool"
		}
	}
	requirements: [
		"ncclient (>=v0.5.2)",
	]
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Tested against vSRX JUNOS version 15.1X49-D15.4, vqfx-10000 JUNOS Version 15.1X53-D60.4.",
		"Recommended connection is C(netconf). See L(the Junos OS Platform Options,../network/user_guide/platform_junos.html).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	extends_documentation_fragment: "junos"
}
