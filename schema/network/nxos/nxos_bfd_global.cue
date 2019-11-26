package ansible

module: nxos_bfd_global: {
	module:                         "nxos_bfd_global"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.9"
	short_description:              "Bidirectional Forwarding Detection (BFD) global-level configuration"
	description: [
		"Manages Bidirectional Forwarding Detection (BFD) global-level configuration.",
	]
	author: [
		"Chris Van Heuveln (@chrisvanheuveln)",
	]
	notes: [
		"Tested against NXOSv 9.2(2)",
		"BFD global will automatically enable 'feature bfd' if it is disabled.",
		"BFD global does not have a 'state' parameter. All of the BFD commands are unique and are defined if 'feature bfd' is enabled.",
	]
	options: {
		// Top-level commands
		echo_interface: {
			description: [
				"Loopback interface used for echo frames.",
				"Valid values are loopback interface name or 'deleted'.",
				"Not supported on N5K/N6K",
			]
			required: false
			type:     "str"
		}
		echo_rx_interval: {
			description: [
				"BFD Echo receive interval in milliseconds.",
			]
			required: false
			type:     "int"
		}
		interval: {
			description: [
				"BFD interval timer values.",
				"Value must be a dict defining values for keys (tx, min_rx, and multiplier)",
			]
			required: false
			type:     "dict"
		}
		slow_timer: {
			description: [
				"BFD slow rate timer in milliseconds.",
			]
			required: false
			type:     "int"
		}
		startup_timer: {
			description: [
				"BFD delayed startup timer in seconds.",
				"Not supported on N5K/N6K/N7K",
			]
			required: false
			type:     "int"
		}

		// IPv4/IPv6 specific commands
		ipv4_echo_rx_interval: {
			description: [
				"BFD IPv4 session echo receive interval in milliseconds.",
			]
			required: false
			type:     "int"
		}
		ipv4_interval: {
			description: [
				"BFD IPv4 interval timer values.",
				"Value must be a dict defining values for keys (tx, min_rx, and multiplier).",
			]
			required: false
			type:     "dict"
		}
		ipv4_slow_timer: {
			description: [
				"BFD IPv4 slow rate timer in milliseconds.",
			]
			required: false
			type:     "int"
		}
		ipv6_echo_rx_interval: {
			description: [
				"BFD IPv6 session echo receive interval in milliseconds.",
			]
			required: false
			type:     "int"
		}
		ipv6_interval: {
			description: [
				"BFD IPv6 interval timer values.",
				"Value must be a dict defining values for keys (tx, min_rx, and multiplier).",
			]
			required: false
			type:     "dict"
		}
		ipv6_slow_timer: {
			description: [
				"BFD IPv6 slow rate timer in milliseconds.",
			]
			required: false
			type:     "int"
		}

		// Fabricpath commands
		fabricpath_interval: {
			description: [
				"BFD fabricpath interval timer values.",
				"Value must be a dict defining values for keys (tx, min_rx, and multiplier).",
			]
			required: false
			type:     "dict"
		}
		fabricpath_slow_timer: {
			description: [
				"BFD fabricpath slow rate timer in milliseconds.",
			]
			required: false
			type:     "int"
		}
		fabricpath_vlan: {
			description: [
				"BFD fabricpath control vlan.",
			]
			required: false
			type:     "int"
		}
	}
}
