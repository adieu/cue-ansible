package ansible

module: ce_vlan: {
	module:            "ce_vlan"
	version_added:     "2.4"
	short_description: "Manages VLAN resources and attributes on Huawei CloudEngine switches."
	description: [
		"Manages VLAN configurations on Huawei CloudEngine switches.",
	]
	author: "QijunPan (@QijunPan)"
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		vlan_id: description: [
			"Single VLAN ID, in the range from 1 to 4094.",
		]
		vlan_range: description: [
			"Range of VLANs such as C(2-10) or C(2,5,10-15), etc.",
		]
		name: description: [
			"Name of VLAN, minimum of 1 character, maximum of 31 characters.",
		]
		description: description: [
			"Specify VLAN description, minimum of 1 character, maximum of 80 characters.",
		]
		state: {
			description: [
				"Manage the state of the resource.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
