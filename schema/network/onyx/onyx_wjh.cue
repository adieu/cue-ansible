package ansible

module: onyx_wjh: {
	module:            "onyx_wjh"
	version_added:     "2.9"
	author:            "Anas Shami (@anass)"
	short_description: "Configure what-just-happend module"
	description: [
		"This module provides declarative management of wjh on Mellanox ONYX network devices.",
	]

	notes: null
	options: {
		group: {
			description: [
				"Name of wjh group.",
			]
			choices: ["all", "forwarding", "acl"]
			type: "str"
		}
		enabled: {
			description: [
				"wjh group status",
			]
			type: "bool"
		}
		auto_export: {
			description: [
				"wjh group auto export pcap file status",
			]
			type: "bool"
		}
		export_group: {
			description: [
				"wjh group auto export group",
			]
			choices: ["all", "forwarding", "acl"]
			type: "str"
		}
		clear_group: {
			description: [
				"clear pcap file by group",
			]
			choices: ["all", "user", "auto-export"]
			type: "str"
		}
	}
}
