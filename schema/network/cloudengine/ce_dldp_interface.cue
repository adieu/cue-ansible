package ansible

module: ce_dldp_interface: {
	module:            "ce_dldp_interface"
	version_added:     "2.4"
	short_description: "Manages interface DLDP configuration on HUAWEI CloudEngine switches."
	description: [
		"Manages interface DLDP configuration on HUAWEI CloudEngine switches.",
	]
	author: [
		"Zhou Zhijin (@QijunPan)",
	]
	notes: [
		"If C(state=present, enable=disable), interface DLDP enable will be turned off and related interface DLDP configuration will be cleared.",
		"If C(state=absent), only local_mac is supported to configure.",
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		interface: {
			description: [
				"Must be fully qualified interface name, i.e. GE1/0/1, 10GE1/0/1, 40GE1/0/22, 100GE1/0/1.",
			]
			required: true
		}
		enable: {
			description: [
				"Set interface DLDP enable state.",
			]
			choices: ["enable", "disable"]
		}
		mode_enable: {
			description: [
				"Set DLDP compatible-mode enable state.",
			]
			choices: ["enable", "disable"]
		}
		local_mac: description: [
			"Set the source MAC address for DLDP packets sent in the DLDP-compatible mode. The value of MAC address is in H-H-H format. H contains 1 to 4 hexadecimal digits.",
		]

		reset: {
			description: [
				"Specify whether reseting interface DLDP state.",
			]
			choices: ["enable", "disable"]
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
