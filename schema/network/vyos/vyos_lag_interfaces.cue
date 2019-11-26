package ansible

module: vyos_lag_interfaces: {
	module:            "vyos_lag_interfaces"
	version_added:     2.9
	short_description: "Manages attributes of link aggregation groups on VyOS network devices."
	description:       "This module manages attributes of link aggregation groups on VyOS network devices."
	notes: [
		"Tested against VyOS 1.1.8 (helium).",
		"This module works with connection C(network_cli). See L(the VyOS OS Platform Options,../network/user_guide/platform_vyos.html).",
	]
	author: "Rohit Thakur (@rohitthakur2590)"
	options: {
		config: {
			description: "A list of link aggregation group configurations."
			type:        "list"
			suboptions: {
				name: {
					description: [
						"Name of the link aggregation group (LAG) or bond.",
					]
					type:     "str"
					required: true
				}
				mode: {
					description: [
						"LAG or bond mode.",
					]
					type: "str"
					choices: [
						"802.3ad",
						"active-backup",
						"broadcast",
						"round-robin",
						"transmit-load-balance",
						"adaptive-load-balance",
						"xor-hash",
					]
				}
				members: {
					description: [
						"List of member interfaces for the LAG (bond).",
					]
					type: "list"
					suboptions: member: {
						description: [
							"Name of the member interface.",
						]
						type: "str"
					}
				}
				primary: {
					description: [
						"Primary device interfaces for the LAG (bond).",
					]
					type: "str"
				}
				hash_policy: {
					description: [
						"LAG or bonding transmit hash policy.",
					]
					type: "str"
					choices: [
						"layer2",
						"layer2+3",
						"layer3+4",
					]
				}
				arp_monitor: {
					description: [
						"ARP Link monitoring parameters.",
					]
					type: "dict"
					suboptions: {
						interval: {
							description: [
								"ARP link monitoring frequency in milliseconds.",
							]
							type: "int"
						}
						target: {
							description: [
								"IP address to use for ARP monitoring.",
							]
							type: "list"
						}
					}
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
