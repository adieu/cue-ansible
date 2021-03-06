package ansible

module: ce_bfd_global: {
	module:            "ce_bfd_global"
	version_added:     "2.4"
	short_description: "Manages BFD global configuration on HUAWEI CloudEngine devices."
	description: [
		"Manages BFD global configuration on HUAWEI CloudEngine devices.",
	]
	author: "QijunPan (@QijunPan)"
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		bfd_enable: {
			description: [
				"Enables the global Bidirectional Forwarding Detection (BFD) function.",
			]
			choices: ["enable", "disable"]
		}
		default_ip: description: [
			"Specifies the default multicast IP address. The value ranges from 224.0.0.107 to 224.0.0.250.",
		]

		tos_exp_dynamic: description: [
			"Indicates the priority of BFD control packets for dynamic BFD sessions. The value is an integer ranging from 0 to 7. The default priority is 7, which is the highest priority of BFD control packets.",
		]

		tos_exp_static: description: [
			"Indicates the priority of BFD control packets for static BFD sessions. The value is an integer ranging from 0 to 7. The default priority is 7, which is the highest priority of BFD control packets.",
		]

		damp_init_wait_time: description: [
			"Specifies an initial flapping suppression time for a BFD session. The value is an integer ranging from 1 to 3600000, in milliseconds. The default value is 2000.",
		]

		damp_max_wait_time: description: [
			"Specifies a maximum flapping suppression time for a BFD session. The value is an integer ranging from 1 to 3600000, in milliseconds. The default value is 15000.",
		]

		damp_second_wait_time: description: [
			"Specifies a secondary flapping suppression time for a BFD session. The value is an integer ranging from 1 to 3600000, in milliseconds. The default value is 5000.",
		]

		delay_up_time: description: [
			"Specifies the delay before a BFD session becomes Up. The value is an integer ranging from 1 to 600, in seconds. The default value is 0, indicating that a BFD session immediately becomes Up.",
		]

		state: {
			description: [
				"Determines whether the config should be present or not on the device.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
