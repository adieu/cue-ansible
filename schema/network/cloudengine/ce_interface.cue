package ansible

module: ce_interface: {
	module:            "ce_interface"
	version_added:     "2.4"
	short_description: "Manages physical attributes of interfaces on HUAWEI CloudEngine switches."
	description: [
		"Manages physical attributes of interfaces on HUAWEI CloudEngine switches.",
	]
	author: "QijunPan (@QijunPan)"
	notes: [
		"This module is also used to create logical interfaces such as vlanif and loopbacks.",
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		interface: description: [
			"Full name of interface, i.e. 40GE1/0/10, Tunnel1.",
		]
		interface_type: {
			description: [
				"Interface type to be configured from the device.",
			]
			choices: [
				"ge",
				"10ge",
				"25ge",
				"4x10ge",
				"40ge",
				"100ge",
				"vlanif",
				"loopback",
				"meth",
				"eth-trunk",
				"nve",
				"tunnel",
				"ethernet",
				"fcoe-port",
				"fabric-port",
				"stack-port",
				"null",
			]
		}
		admin_state: {
			description: [
				"Specifies the interface management status. The value is an enumerated type. up, An interface is in the administrative Up state. down, An interface is in the administrative Down state.",
			]

			choices: ["up", "down"]
		}
		description: description: [
			"Specifies an interface description. The value is a string of 1 to 242 case-sensitive characters, spaces supported but question marks (?) not supported.",
		]

		mode: {
			description: [
				"Manage Layer 2 or Layer 3 state of the interface.",
			]
			choices: ["layer2", "layer3"]
		}
		l2sub: {
			description: [
				"Specifies whether the interface is a Layer 2 sub-interface.",
			]
			type:    "bool"
			default: "no"
		}
		state: {
			description: [
				"Specify desired state of the resource.",
			]
			default: "present"
			choices: ["present", "absent", "default"]
		}
	}
}
