package ansible

module: onyx_protocol: {
	module:            "onyx_protocol"
	version_added:     "2.5"
	author:            "Samer Deeb (@samerd)"
	short_description: "Enables/Disables protocols on Mellanox ONYX network devices"
	description: [
		"This module provides a mechanism for enabling and disabling protocols Mellanox on ONYX network devices.",
	]

	notes: [
		"Tested on ONYX 3.6.4000",
	]
	options: {
		mlag: {
			description: "MLAG protocol"
			choices: ["enabled", "disabled"]
		}
		magp: {
			description: "MAGP protocol"
			choices: ["enabled", "disabled"]
		}
		spanning_tree: {
			description: "Spanning Tree support"
			choices: ["enabled", "disabled"]
		}
		dcb_pfc: {
			description: "DCB priority flow control"
			choices: ["enabled", "disabled"]
		}
		igmp_snooping: {
			description: "IP IGMP snooping"
			choices: ["enabled", "disabled"]
		}
		lacp: {
			description: "LACP protocol"
			choices: ["enabled", "disabled"]
		}
		ip_l3: {
			description: "IP L3 support"
			choices: ["enabled", "disabled"]
		}
		ip_routing: {
			description: "IP routing support"
			choices: ["enabled", "disabled"]
		}
		lldp: {
			description: "LLDP protocol"
			choices: ["enabled", "disabled"]
		}
		bgp: {
			description: "BGP protocol"
			choices: ["enabled", "disabled"]
		}
		ospf: {
			description: "OSPF protocol"
			choices: ["enabled", "disabled"]
		}
		nve: {
			description: "nve protocol"
			choices: ["enabled", "disabled"]
			version_added: "2.9"
		}
	}
}
