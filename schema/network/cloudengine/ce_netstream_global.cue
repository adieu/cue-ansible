package ansible

module: ce_netstream_global: {
	module:            "ce_netstream_global"
	version_added:     "2.4"
	short_description: "Manages global parameters of NetStream on HUAWEI CloudEngine switches."
	description: [
		"Manages global parameters of NetStream on HUAWEI CloudEngine switches.",
	]
	author: "YangYang (@QijunPan)"
	notes: [
		"Recommended connection is C(network_cli).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		type: {
			description: [
				"Specifies the type of netstream global.",
			]
			choices: ["ip", "vxlan"]
			default: "ip"
		}
		state: {
			description: [
				"Specify desired state of the resource.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		interface: {
			description: [
				"Netstream global interface.",
			]
			required: true
		}
		sampler_interval: description: [
			"Specifies the netstream sampler interval, length is 1 - 65535.",
		]
		sampler_direction: {
			description: [
				"Specifies the netstream sampler direction.",
			]
			choices: ["inbound", "outbound"]
		}
		statistics_direction: {
			description: [
				"Specifies the netstream statistic direction.",
			]
			choices: ["inbound", "outbound"]
		}
		statistics_record: description: [
			"Specifies the flexible netstream statistic record, length is 1 - 32.",
		]
		index_switch: {
			description: [
				"Specifies the netstream index-switch.",
			]
			choices: ["16", "32"]
			default: "16"
		}
	}
}
