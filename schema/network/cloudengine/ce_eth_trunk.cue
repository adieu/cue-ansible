package ansible

module: ce_eth_trunk: {
	module:            "ce_eth_trunk"
	version_added:     "2.4"
	short_description: "Manages Eth-Trunk interfaces on HUAWEI CloudEngine switches."
	description: [
		"Manages Eth-Trunk specific configuration parameters on HUAWEI CloudEngine switches.",
	]
	author: "QijunPan (@QijunPan)"
	notes: [
		"C(state=absent) removes the Eth-Trunk config and interface if it already exists. If members to be removed are not explicitly passed, all existing members (if any), are removed, and Eth-Trunk removed.",
		"Members must be a list.",
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		trunk_id: {
			description: [
				"Eth-Trunk interface number. The value is an integer. The value range depends on the assign forward eth-trunk mode command. When 256 is specified, the value ranges from 0 to 255. When 512 is specified, the value ranges from 0 to 511. When 1024 is specified, the value ranges from 0 to 1023.",
			]

			required: true
		}
		mode: {
			description: [
				"Specifies the working mode of an Eth-Trunk interface.",
			]
			choices: ["manual", "lacp-dynamic", "lacp-static"]
		}
		min_links: description: [
			"Specifies the minimum number of Eth-Trunk member links in the Up state. The value is an integer ranging from 1 to the maximum number of interfaces that can be added to a Eth-Trunk interface.",
		]

		hash_type: {
			description: [
				"Hash algorithm used for load balancing among Eth-Trunk member interfaces.",
			]
			choices: ["src-dst-ip", "src-dst-mac", "enhanced", "dst-ip", "dst-mac", "src-ip", "src-mac"]
		}
		members: description: [
			"List of interfaces that will be managed in a given Eth-Trunk. The interface name must be full name.",
		]

		force: {
			description: [
				"When true it forces Eth-Trunk members to match what is declared in the members param. This can be used to remove members.",
			]

			type:    "bool"
			default: "no"
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
