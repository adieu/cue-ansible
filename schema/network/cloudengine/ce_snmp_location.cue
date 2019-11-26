package ansible

module: ce_snmp_location: {
	module:            "ce_snmp_location"
	version_added:     "2.4"
	short_description: "Manages SNMP location configuration on HUAWEI CloudEngine switches."
	description: [
		"Manages SNMP location configurations on HUAWEI CloudEngine switches.",
	]
	author: [
		"wangdezhuang (@QijunPan)",
	]
	notes: [
		"Recommended connection is C(network_cli).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		location: {
			description: [
				"Location information.",
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
