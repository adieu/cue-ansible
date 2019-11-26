package ansible

module: ce_vrf_interface: {
	module:            "ce_vrf_interface"
	version_added:     "2.4"
	short_description: "Manages interface specific VPN configuration on HUAWEI CloudEngine switches."
	description: [
		"Manages interface specific VPN configuration of HUAWEI CloudEngine switches.",
	]
	author: "Zhijin Zhou (@QijunPan)"
	notes: [
		"Ensure that a VPN instance has been created and the IPv4 address family has been enabled for the VPN instance.",
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		vrf: {
			description: [
				"VPN instance, the length of vrf name is 1 ~ 31, i.e. \"test\", but can not be C(_public_).",
			]
			required: true
		}
		vpn_interface: {
			description: [
				"An interface that can binding VPN instance, i.e. 40GE1/0/22, Vlanif10. Must be fully qualified interface name. Interface types, such as 10GE, 40GE, 100GE, LoopBack, MEth, Tunnel, Vlanif....",
			]

			required: true
		}
		state: {
			description: [
				"Manage the state of the resource.",
			]
			required: false
			choices: ["present", "absent"]
			default: "present"
		}
	}
}
