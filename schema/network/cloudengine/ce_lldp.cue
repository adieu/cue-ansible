package ansible

module: ce_lldp: {
	module:            "ce_lldp"
	version_added:     "2.10"
	short_description: "Manages LLDP configuration on HUAWEI CloudEngine switches."
	description: [
		"Manages LLDP configuration on HUAWEI CloudEngine switches.",
	]
	author: [
		"xuxiaowei0512 (@CloudEngine-Ansible)",
	]
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		lldpenable: {
			description: [
				"Set global LLDP enable state.",
			]
			required: false
			choices: ["enabled", "disabled"]
			type: "str"
		}
		mdnstatus: {
			description: [
				"Set global MDN enable state.",
			]
			required: false
			choices: ["rxOnly", "disabled"]
			type: "str"
		}
		interval: {
			description: [
				"Frequency at which LLDP advertisements are sent (in seconds).",
			]
			required: false
			type:     "int"
		}
		hold_multiplier: {
			description: [
				"Time multiplier for device information in neighbor devices.",
			]
			required: false
			type:     "int"
		}
		restart_delay: {
			description: [
				"Specifies the delay time of the interface LLDP module from disabled state to re enable.",
			]
			required: false
			type:     "int"
		}
		transmit_delay: {
			description: [
				"Delay time for sending LLDP messages.",
			]
			required: false
			type:     "int"
		}
		notification_interval: {
			description: [
				"Suppression time for sending LLDP alarm.",
			]
			required: false
			type:     "int"
		}
		fast_count: {
			description: [
				"The number of LLDP messages sent to the neighbor nodes by the specified device.",
			]
			required: false
			type:     "int"
		}
		mdn_notification_interval: {
			description: [
				"Delay time for sending MDN neighbor information change alarm.",
			]
			required: false
			type:     "int"
		}
		management_address: {
			description: [
				"The management IP address of LLDP.",
			]
			required: false
			default:  null
			type:     "str"
		}
		bind_name: {
			description: [
				"Binding interface name.",
			]
			required: false
			default:  null
			type:     "str"
		}
		state: {
			description: [
				"Manage the state of the resource.",
			]
			required: false
			default:  "present"
			type:     "str"
			choices: ["present", "absent"]
		}
	}
}
