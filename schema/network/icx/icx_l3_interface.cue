package ansible

module: icx_l3_interface: {
	module:            "icx_l3_interface"
	version_added:     "2.9"
	author:            "Ruckus Wireless (@Commscope)"
	short_description: "Manage Layer-3 interfaces on Ruckus ICX 7000 series switches"
	description: [
		"This module provides declarative management of Layer-3 interfaces on ICX network devices.",
	]

	notes: [
		"Tested against ICX 10.1.",
		"For information on using ICX platform, see L(the ICX OS Platform Options guide,../network/user_guide/platform_icx.html).",
	]
	options: {
		name: {
			description: [
				"Name of the Layer-3 interface to be configured eg. GigabitEthernet0/2, ve 10, ethernet 1/1/1",
			]
			type: "str"
		}
		ipv4: {
			description: [
				"IPv4 address to be set for the Layer-3 interface mentioned in I(name) option. The address format is <ipv4 address>/<mask>, the mask is number in range 0-32 eg. 192.168.0.1/24",
			]

			type: "str"
		}
		ipv6: {
			description: [
				"IPv6 address to be set for the Layer-3 interface mentioned in I(name) option. The address format is <ipv6 address>/<mask>, the mask is number in range 0-128 eg. fd5d:12c9:2201:1::1/64.",
			]

			type: "str"
		}
		mode: {
			description: [
				"Specifies if ipv4 address should be dynamic/advertise to ospf/not advertise to ospf. This should be specified only if ipv4 address is configured and if it is not secondary IP address.",
			]

			choices: ["dynamic", "ospf-ignore", "ospf-passive"]
			type: "str"
		}
		replace: {
			description: [
				"Replaces the configured primary IP address on the interface.",
			]
			choices: ["yes", "no"]
			type: "str"
		}
		secondary: {
			description: [
				"Specifies that the configured address is a secondary IP address. If this keyword is omitted, the configured address is the primary IP address.",
			]

			choices: ["yes", "no"]
			type: "str"
		}
		aggregate: {
			description: [
				"List of Layer-3 interfaces definitions. Each of the entry in aggregate list should define name of interface C(name) and a optional C(ipv4) or C(ipv6) address.",
			]

			type: "list"
			suboptions: {
				name: {
					description: [
						"Name of the Layer-3 interface to be configured eg. GigabitEthernet0/2, ve 10, ethernet 1/1/1",
					]
					type: "str"
				}
				ipv4: {
					description: [
						"IPv4 address to be set for the Layer-3 interface mentioned in I(name) option. The address format is <ipv4 address>/<mask>, the mask is number in range 0-32 eg. 192.168.0.1/24",
					]

					type: "str"
				}
				ipv6: {
					description: [
						"IPv6 address to be set for the Layer-3 interface mentioned in I(name) option. The address format is <ipv6 address>/<mask>, the mask is number in range 0-128 eg. fd5d:12c9:2201:1::1/64.",
					]

					type: "str"
				}
				mode: {
					description: [
						"Specifies if ipv4 address should be dynamic/advertise to ospf/not advertise to ospf. This should be specified only if ipv4 address is configured and if it is not secondary IP address.",
					]

					choices: ["dynamic", "ospf-ignore", "ospf-passive"]
					type: "str"
				}
				replace: {
					description: [
						"Replaces the configured primary IP address on the interface.",
					]
					choices: ["yes", "no"]
					type: "str"
				}
				secondary: {
					description: [
						"Specifies that the configured address is a secondary IP address. If this keyword is omitted, the configured address is the primary IP address.",
					]

					choices: ["yes", "no"]
					type: "str"
				}
				state: {
					description: [
						"State of the Layer-3 interface configuration. It indicates if the configuration should be present or absent on remote device.",
					]

					choices: ["present", "absent"]
					type: "str"
				}
				check_running_config: {
					description: [
						"Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.",
					]

					type: "bool"
				}
			}
		}
		state: {
			description: [
				"State of the Layer-3 interface configuration. It indicates if the configuration should be present or absent on remote device.",
			]

			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		check_running_config: {
			description: [
				"Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.",
			]

			type:    "bool"
			default: true
		}
	}
}
