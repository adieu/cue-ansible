package ansible

module: ce_ip_interface: {
	module:            "ce_ip_interface"
	version_added:     "2.4"
	short_description: "Manages L3 attributes for IPv4 and IPv6 interfaces on HUAWEI CloudEngine switches."
	description: [
		"Manages Layer 3 attributes for IPv4 and IPv6 interfaces on HUAWEI CloudEngine switches.",
	]
	author: "QijunPan (@QijunPan)"
	notes: [
		"Interface must already be a L3 port when using this module.",
		"Logical interfaces (loopback, vlanif) must be created first.",
		"C(mask) must be inserted in decimal format (i.e. 24) for both IPv6 and IPv4.",
		"A single interface can have multiple IPv6 configured.",
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		interface: {
			description: [
				"Full name of interface, i.e. 40GE1/0/22, vlanif10.",
			]
			required: true
		}
		addr: description: [
			"IPv4 or IPv6 Address.",
		]
		mask: description: [
			"Subnet mask for IPv4 or IPv6 Address in decimal format.",
		]
		version: {
			description: [
				"IP address version.",
			]
			default: "v4"
			choices: ["v4", "v6"]
		}
		ipv4_type: {
			description: [
				"Specifies an address type. The value is an enumerated type. main, primary IP address. sub, secondary IP address.",
			]

			default: "main"
			choices: ["main", "sub"]
		}
		state: {
			description: [
				"Specify desired state of the resource.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
