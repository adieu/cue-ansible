package ansible

module: ce_evpn_global: {
	module:            "ce_evpn_global"
	version_added:     "2.4"
	short_description: "Manages global configuration of EVPN on HUAWEI CloudEngine switches."
	description: [
		"Manages global configuration of EVPN on HUAWEI CloudEngine switches.",
	]
	author: "Zhijin Zhou (@QijunPan)"
	notes: [
		"Before configuring evpn_overlay_enable=disable, delete other EVPN configurations.",
		"Recommended connection is C(network_cli).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: evpn_overlay_enable: {
		description: [
			"Configure EVPN as the VXLAN control plane.",
		]
		required: true
		choices: ["enable", "disable"]
	}
}
