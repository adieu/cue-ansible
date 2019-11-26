package ansible

module: ce_ntp: {
	module:            "ce_ntp"
	version_added:     "2.4"
	short_description: "Manages core NTP configuration on HUAWEI CloudEngine switches."
	description: [
		"Manages core NTP configuration on HUAWEI CloudEngine switches.",
	]
	author: [
		"Zhijin Zhou (@QijunPan)",
	]
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		server: description: [
			"Network address of NTP server.",
		]
		peer: description: [
			"Network address of NTP peer.",
		]
		key_id: description: [
			"Authentication key identifier to use with given NTP server or peer.",
		]
		is_preferred: {
			description: [
				"Makes given NTP server or peer the preferred NTP server or peer for the device.",
			]
			choices: ["enable", "disable"]
		}
		vpn_name: {
			description: [
				"Makes the device communicate with the given NTP server or peer over a specific vpn.",
			]

			default: "_public_"
		}
		source_int: description: [
			"Local source interface from which NTP messages are sent. Must be fully qualified interface name, i.e. C(40GE1/0/22), C(vlanif10). Interface types, such as C(10GE), C(40GE), C(100GE), C(Eth-Trunk), C(LoopBack), C(MEth), C(NULL), C(Tunnel), C(Vlanif).",
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
