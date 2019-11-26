package ansible

module: ce_reboot: {
	module:            "ce_reboot"
	version_added:     2.4
	short_description: "Reboot a HUAWEI CloudEngine switches."
	description: [
		"Reboot a HUAWEI CloudEngine switches.",
	]
	author: "Gong Jianjun (@QijunPan)"
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	requirements: ["ncclient"]
	options: {
		confirm: {
			description: [
				"Safeguard boolean. Set to true if you're sure you want to reboot.",
			]
			type:     "bool"
			required: true
		}
		save_config: {
			description: [
				"Flag indicating whether to save the configuration.",
			]
			required: false
			type:     "bool"
			default:  false
		}
	}
}
