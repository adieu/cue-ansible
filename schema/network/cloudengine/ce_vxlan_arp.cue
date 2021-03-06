package ansible

module: ce_vxlan_arp: {
	module:            "ce_vxlan_arp"
	version_added:     "2.4"
	short_description: "Manages ARP attributes of VXLAN on HUAWEI CloudEngine devices."
	description: [
		"Manages ARP attributes of VXLAN on HUAWEI CloudEngine devices.",
	]
	author: "QijunPan (@QijunPan)"
	notes: [
		"Recommended connection is C(network_cli).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		evn_bgp: {
			description: [
				"Enables EVN BGP.",
			]
			choices: ["enable", "disable"]
		}
		evn_source_ip: description: [
			"Specifies the source address of an EVN BGP peer. The value is in dotted decimal notation.",
		]

		evn_peer_ip: description: [
			"Specifies the IP address of an EVN BGP peer. The value is in dotted decimal notation.",
		]

		evn_server: {
			description: [
				"Configures the local device as the router reflector (RR) on the EVN network.",
			]
			choices: ["enable", "disable"]
		}
		evn_reflect_client: {
			description: [
				"Configures the local device as the route reflector (RR) and its peer as the client.",
			]
			choices: ["enable", "disable"]
		}
		vbdif_name: description: [
			"Full name of VBDIF interface, i.e. Vbdif100.",
		]
		arp_collect_host: {
			description: [
				"Enables EVN BGP or BGP EVPN to collect host information.",
			]
			choices: ["enable", "disable"]
		}
		host_collect_protocol: {
			description: [
				"Enables EVN BGP or BGP EVPN to advertise host information.",
			]
			choices: ["bgp", "none"]
		}
		bridge_domain_id: description: [
			"Specifies a BD(bridge domain) ID. The value is an integer ranging from 1 to 16777215.",
		]

		arp_suppress: {
			description: [
				"Enables ARP broadcast suppression in a BD.",
			]
			choices: ["enable", "disable"]
		}
		state: {
			description: [
				"Determines whether the config should be present or not on the device.",
			]

			default: "present"
			choices: ["present", "absent"]
		}
	}
}
