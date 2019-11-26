package ansible

module: onyx_vxlan: {
	module:            "onyx_vxlan"
	version_added:     "2.8"
	author:            "Anas Badaha (@anasb)"
	short_description: "Configures Vxlan"
	description: [
		"This module provides declarative management of Vxlan configuration on Mellanox ONYX network devices.",
	]

	notes: [
		"Tested on ONYX evpn_dev.031.",
		"nve protocol must be enabled.",
	]
	options: {
		nve_id: {
			description: [
				"nve interface ID.",
			]
			required: true
		}
		loopback_id: description: [
			"loopback interface ID.",
		]
		bgp: {
			description: [
				"configure bgp on nve interface.",
			]
			type:    "bool"
			default: true
		}
		mlag_tunnel_ip: description: [
			"vxlan Mlag tunnel IP",
		]
		vni_vlan_list: description: [
			"Each item in the list has two attributes vlan_id, vni_id.",
		]
		arp_suppression: {
			description: [
				"A flag telling if to configure arp suppression.",
			]
			type:    "bool"
			default: false
		}
	}
}
