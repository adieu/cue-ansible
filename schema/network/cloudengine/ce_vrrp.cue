package ansible

module: ce_vrrp: {
	module:            "ce_vrrp"
	version_added:     "2.4"
	short_description: "Manages VRRP interfaces on HUAWEI CloudEngine devices."
	description: [
		"Manages VRRP interface attributes on HUAWEI CloudEngine devices.",
	]
	author: [
		"Li Yanfeng (@numone213)",
	]
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		interface: description: [
			"Name of an interface. The value is a string of 1 to 63 characters.",
		]
		vrid: {
			description: [
				"VRRP backup group ID. The value is an integer ranging from 1 to 255.",
			]

			default: "present"
		}
		virtual_ip: description: [
			"Virtual IP address. The value is a string of 0 to 255 characters.",
		]
		vrrp_type: {
			description: [
				"Type of a VRRP backup group.",
			]
			type: "str"
			choices: ["normal", "member", "admin"]
		}
		admin_ignore_if_down: {
			description: [
				"mVRRP ignores an interface Down event.",
			]
			type:    "bool"
			default: "false"
		}
		admin_vrid: description: [
			"Tracked mVRRP ID. The value is an integer ranging from 1 to 255.",
		]
		admin_interface: description: [
			"Tracked mVRRP interface name. The value is a string of 1 to 63 characters.",
		]
		admin_flowdown: {
			description: [
				"Disable the flowdown function for service VRRP.",
			]
			type:    "bool"
			default: "false"
		}
		priority: description: [
			"Configured VRRP priority. The value ranges from 1 to 254. The default value is 100. A larger value indicates a higher priority.",
		]

		version: {
			description: [
				"VRRP version. The default version is v2.",
			]
			type: "str"
			choices: ["v2", "v3"]
		}
		advertise_interval: description: [
			"Configured interval between sending advertisements, in milliseconds. Only the master router sends VRRP advertisements. The default value is 1000 milliseconds.",
		]

		preempt_timer_delay: description: [
			"Preemption delay. The value is an integer ranging from 0 to 3600. The default value is 0.",
		]

		gratuitous_arp_interval: description: [
			"Interval at which gratuitous ARP packets are sent, in seconds. The value ranges from 30 to 1200.The default value is 300.",
		]

		recover_delay: description: [
			"Delay in recovering after an interface goes Up. The delay is used for interface flapping suppression. The value is an integer ranging from 0 to 3600. The default value is 0 seconds.",
		]

		holding_multiplier: description: [
			"The configured holdMultiplier.The value is an integer ranging from 3 to 10. The default value is 3.",
		]
		auth_mode: {
			description: [
				"Authentication type used for VRRP packet exchanges between virtual routers. The values are noAuthentication, simpleTextPassword, md5Authentication. The default value is noAuthentication.",
			]

			type: "str"
			choices: ["simple", "md5", "none"]
		}
		is_plain: {
			description: [
				"Select the display mode of an authentication key. By default, an authentication key is displayed in ciphertext.",
			]

			type:    "bool"
			default: "false"
		}
		auth_key: description: [
			"This object is set based on the authentication type. When noAuthentication is specified, the value is empty. When simpleTextPassword or md5Authentication is specified, the value is a string of 1 to 8 characters in plaintext and displayed as a blank text for security.",
		]

		fast_resume: {
			description: [
				"mVRRP's fast resume mode.",
			]
			type: "str"
			choices: ["enable", "disable"]
		}
		state: {
			description: [
				"Specify desired state of the resource.",
			]
			type:    "str"
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
