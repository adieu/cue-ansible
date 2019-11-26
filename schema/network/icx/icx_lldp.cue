package ansible

module: icx_lldp: {
	module:            "icx_lldp"
	version_added:     "2.9"
	author:            "Ruckus Wireless (@Commscope)"
	short_description: "Manage LLDP configuration on Ruckus ICX 7000 series switches"
	description: [
		"This module provides declarative management of LLDP service on ICX network devices.",
	]
	notes: [
		"Tested against ICX 10.1.",
		"For information on using ICX platform, see L(the ICX OS Platform Options guide,../network/user_guide/platform_icx.html).",
	]
	options: {
		interfaces: {
			description: [
				"specify interfaces",
			]
			suboptions: {
				name: {
					description: [
						"List of ethernet ports to enable lldp.  To add a range of ports use 'to' keyword. See the example.",
					]
					type: "list"
				}
				state: {
					description: [
						"State of lldp configuration for interfaces",
					]
					type: "str"
					choices: ["present", "absent", "enabled", "disabled"]
				}
			}
			type: "list"
		}
		check_running_config: {
			description: [
				"Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.",
			]

			type:    "bool"
			default: true
		}
		state: {
			description: [
				"Enables the receipt and transmission of Link Layer Discovery Protocol (LLDP) globally.",
			]
			type: "str"
			choices: ["present", "absent", "enabled", "disabled"]
		}
	}
}
