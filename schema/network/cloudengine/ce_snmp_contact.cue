package ansible

module: ce_snmp_contact: {
	module:            "ce_snmp_contact"
	version_added:     "2.4"
	short_description: "Manages SNMP contact configuration on HUAWEI CloudEngine switches."
	description: [
		"Manages SNMP contact configurations on HUAWEI CloudEngine switches.",
	]
	author: [
		"wangdezhuang (@QijunPan)",
	]
	notes: [
		"Recommended connection is C(network_cli).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		contact: {
			description: [
				"Contact information.",
			]
			required: true
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
