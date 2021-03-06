package ansible

module: onyx_igmp_vlan: {
	module:            "onyx_igmp_vlan"
	version_added:     "2.8"
	author:            "Anas Badaha (@anasbadaha)"
	short_description: "Configures IGMP Vlan parameters"
	description: [
		"This module provides declarative management of IGMP vlan configuration on Mellanox ONYX network devices.",
	]
	notes: [
		"Tested on ONYX 3.7.0932-01",
	]
	options: {
		vlan_id: {
			description: [
				"VLAN ID, vlan should exist.",
			]
			required: true
		}
		state: {
			description: [
				"IGMP state.",
			]
			choices: ["enabled", "disabled"]
			default: "enabled"
		}
		mrouter: {
			description: [
				"Configure ip igmp snooping mrouter port on vlan",
			]
			suboptions: {
				state: {
					description: [
						"Enable IGMP snooping mrouter on vlan interface.",
					]
					choices: ["enabled", "disabled"]
					default: "enabled"
				}
				name: {
					description: [
						"Configure mrouter interface",
					]
					required: true
				}
			}
		}
		querier: {
			description: [
				"Configure the IGMP querier parameters",
			]
			suboptions: {
				state: {
					description: [
						"Enable IGMP snooping querier on vlan in the switch.",
					]
					choices: ["enabled", "disabled"]
					default: "enabled"
				}
				interval: description: [
					"Update time interval between querier queries, range 60-600",
				]
				address: description: [
					"Update IP address for the querier",
				]
			}
		}
		static_groups: {
			description: [
				"List of IGMP static groups.",
			]
			suboptions: {
				multicast_ip_address: {
					description: [
						"Configure static IP multicast group, range 224.0.1.0-239.255.255.25.",
					]
					required: true
				}
				name: description: [
					"interface name to configure static groups on it.",
				]
				sources: description: [
					"List of IP sources to be configured",
				]
			}
		}
		version: {
			description: [
				"IGMP snooping operation version on this vlan",
			]
			choices: ["V2", "V3"]
		}
	}
}
