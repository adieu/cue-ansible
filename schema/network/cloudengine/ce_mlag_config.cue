package ansible

module: ce_mlag_config: {
	module:            "ce_mlag_config"
	version_added:     "2.4"
	short_description: "Manages MLAG configuration on HUAWEI CloudEngine switches."
	description: [
		"Manages MLAG configuration on HUAWEI CloudEngine switches.",
	]
	author: [
		"Li Yanfeng (@QijunPan)",
	]
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		dfs_group_id: {
			description: [
				"ID of a DFS group. The value is 1.",
			]
			default: "present"
		}
		nickname: description: [
			"The nickname bound to a DFS group. The value is an integer that ranges from 1 to 65471.",
		]
		pseudo_nickname: description: [
			"A pseudo nickname of a DFS group. The value is an integer that ranges from 1 to 65471.",
		]
		pseudo_priority: description: [
			"The priority of a pseudo nickname. The value is an integer that ranges from 128 to 255. The default value is 192. A larger value indicates a higher priority.",
		]

		ip_address: description: [
			"IP address bound to the DFS group. The value is in dotted decimal notation.",
		]
		vpn_instance_name: description: [
			"Name of the VPN instance bound to the DFS group. The value is a string of 1 to 31 case-sensitive characters without spaces. If the character string is quoted by double quotation marks, the character string can contain spaces. The value _public_ is reserved and cannot be used as the VPN instance name.",
		]

		priority_id: description: [
			"Priority of a DFS group. The value is an integer that ranges from 1 to 254. The default value is 100.",
		]
		eth_trunk_id: description: [
			"Name of the peer-link interface. The value is in the range from 0 to 511.",
		]
		peer_link_id: description: [
			"Number of the peer-link interface. The value is 1.",
		]
		state: {
			description: [
				"Specify desired state of the resource.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
