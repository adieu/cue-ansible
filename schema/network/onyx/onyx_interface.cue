package ansible

module: onyx_interface: {
	module:            "onyx_interface"
	version_added:     "2.5"
	author:            "Samer Deeb (@samerd)"
	short_description: "Manage Interfaces on Mellanox ONYX network devices"
	description: [
		"This module provides declarative management of Interfaces on Mellanox ONYX network devices.",
	]

	notes:
		null, options: {
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
				"Interface link status.",
			]
			type: "bool"
		}
		speed: {
			description: [
				"Interface link speed.",
			]
			choices: ["1G", "10G", "25G", "40G", "50G", "56G", "100G"]
		}
		mtu: description: [
			"Maximum size of transmit packet.",
		]
		aggregate: description: "List of Interfaces definitions."
		duplex: {
			description: [
				"Interface link status",
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
		delay: {
			description: [
				"Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state argument which are I(state) with values C(up)/C(down).",
			]

			default: 10
		}
		purge: {
			description: [
				"Purge Interfaces not defined in the aggregate parameter. This applies only for logical interface.",
			]

			default: false
			type:    "bool"
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
