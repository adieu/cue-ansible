package ansible

module: ce_snmp_community: {
	module:            "ce_snmp_community"
	version_added:     "2.4"
	short_description: "Manages SNMP community configuration on HUAWEI CloudEngine switches."
	description: [
		"Manages SNMP community configuration on HUAWEI CloudEngine switches.",
	]
	author: [
		"wangdezhuang (@QijunPan)",
	]
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		acl_number: description: [
			"Access control list number.",
		]
		community_name: description: [
			"Unique name to identify the community.",
		]
		access_right: {
			description: [
				"Access right read or write.",
			]
			choices: ["read", "write"]
		}
		community_mib_view: description: [
			"Mib view name.",
		]
		group_name: description: [
			"Unique name to identify the SNMPv3 group.",
		]
		security_level: {
			description: [
				"Security level indicating whether to use authentication and encryption.",
			]
			choices: ["noAuthNoPriv", "authentication", "privacy"]
		}
		read_view: description: [
			"Mib view name for read.",
		]
		write_view: description: [
			"Mib view name for write.",
		]
		notify_view: description: [
			"Mib view name for notification.",
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
