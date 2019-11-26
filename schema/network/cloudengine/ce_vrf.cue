package ansible

module: ce_vrf: {
	module:            "ce_vrf"
	version_added:     "2.4"
	short_description: "Manages VPN instance on HUAWEI CloudEngine switches."
	description: [
		"Manages VPN instance of HUAWEI CloudEngine switches.",
	]
	author: "Yang yang (@QijunPan)"
	notes: [
		"If I(state=absent), the route will be removed, regardless of the non-required options.",
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		vrf: {
			description: [
				"VPN instance, the length of vrf name is 1 - 31, i.e. \"test\", but can not be C(_public_).",
			]
			required: true
		}
		description: description: [
			"Description of the vrf, the string length is 1 - 242 .",
		]
		state: {
			description: [
				"Manage the state of the resource.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
	}
}
