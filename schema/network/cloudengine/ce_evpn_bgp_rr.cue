package ansible

module: ce_evpn_bgp_rr: {
	module:            "ce_evpn_bgp_rr"
	version_added:     "2.4"
	short_description: "Manages RR for the VXLAN Network on HUAWEI CloudEngine switches."
	description: [
		"Configure an RR in BGP-EVPN address family view on HUAWEI CloudEngine switches.",
	]
	author: "Zhijin Zhou (@QijunPan)"
	notes: [
		"Ensure that BGP view is existed.",
		"The peer, peer_type, and reflect_client arguments must all exist or not exist.",
		"Recommended connection is C(network_cli).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		as_number: {
			description: [
				"Specifies the number of the AS, in integer format. The value is an integer that ranges from 1 to 4294967295.",
			]

			required: true
		}
		bgp_instance: description: [
			"Specifies the name of a BGP instance. The value of instance-name can be an integer 1 or a string of 1 to 31.",
		]

		bgp_evpn_enable: {
			description: [
				"Enable or disable the BGP-EVPN address family.",
			]
			choices: ["enable", "disable"]
			default: "enable"
		}
		peer_type: {
			description: [
				"Specify the peer type.",
			]
			choices: ["group_name", "ipv4_address"]
		}
		peer: description: [
			"Specifies the IPv4 address or the group name of a peer.",
		]
		reflect_client: {
			description: [
				"Configure the local device as the route reflector and the peer or peer group as the client of the route reflector.",
			]
			choices: ["enable", "disable"]
		}
		policy_vpn_target: {
			description: [
				"Enable or disable the VPN-Target filtering.",
			]
			choices: ["enable", "disable"]
		}
	}
}
