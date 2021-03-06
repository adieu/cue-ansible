package ansible

module: ce_evpn_bgp: {
	module:            "ce_evpn_bgp"
	version_added:     "2.4"
	short_description: "Manages BGP EVPN configuration on HUAWEI CloudEngine switches."
	description: [
		"This module offers the ability to configure a BGP EVPN peer relationship on HUAWEI CloudEngine switches.",
	]
	author: [
		"Li Yanfeng (@QijunPan)",
	]
	notes: [
		"Recommended connection is C(network_cli).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		bgp_instance: {
			description: [
				"Name of a BGP instance. The value is a string of 1 to 31 case-sensitive characters, spaces not supported.",
			]
			required: true
		}
		as_number: description: [
			"Specifies integral AS number. The value is an integer ranging from 1 to 4294967295.",
		]
		peer_address: description: [
			"Specifies the IPv4 address of a BGP EVPN peer. The value is in dotted decimal notation.",
		]
		peer_group_name: description: [
			"Specify the name of a peer group that BGP peers need to join. The value is a string of 1 to 47 case-sensitive characters, spaces not supported.",
		]

		peer_enable: {
			description: [
				"Enable or disable a BGP device to exchange routes with a specified peer or peer group in the address family view.",
			]

			choices: ["true", "false"]
		}
		advertise_router_type: {
			description: [
				"Configures a device to advertise routes to its BGP EVPN peers.",
			]
			choices: ["arp", "irb"]
		}
		vpn_name: description: [
			"Associates a specified VPN instance with the IPv4 address family. The value is a string of 1 to 31 case-sensitive characters, spaces not supported.",
		]

		advertise_l2vpn_evpn: {
			description: [
				"Enable or disable a device to advertise IP routes imported to a VPN instance to its EVPN instance.",
			]
			choices: ["enable", "disable"]
		}
		state: {
			description: [
				"Manage the state of the resource.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
