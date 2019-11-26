package ansible

module: ce_netstream_aging: {
	module:            "ce_netstream_aging"
	version_added:     "2.4"
	short_description: "Manages timeout mode of NetStream on HUAWEI CloudEngine switches."
	description: [
		"Manages timeout mode of NetStream on HUAWEI CloudEngine switches.",
	]
	author: "YangYang (@QijunPan)"
	notes: [
		"Recommended connection is C(network_cli).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		timeout_interval: {
			description: [
				"Netstream timeout interval. If is active type the interval is 1-60. If is inactive ,the interval is 5-600.",
			]

			default: 30
		}
		type: {
			description: [
				"Specifies the packet type of netstream timeout active interval.",
			]
			choices: ["ip", "vxlan"]
		}
		state: {
			description: [
				"Specify desired state of the resource.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		timeout_type: {
			description: [
				"Netstream timeout type.",
			]
			choices: ["active", "inactive", "tcp-session", "manual"]
		}
		manual_slot: description: ["Specifies the slot number of netstream manual timeout."]
	}
}
