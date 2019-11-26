package ansible

module: nxos_vrrp: {
	module:                         "nxos_vrrp"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.1"
	short_description:              "Manages VRRP configuration on NX-OS switches."
	description: [
		"Manages VRRP configuration on NX-OS switches.",
	]
	author: [
		"Jason Edelman (@jedelman8)",
		"Gabriele Gerbino (@GGabriele)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"VRRP feature needs to be enabled first on the system.",
		"SVIs must exist before using this module.",
		"Interface must be a L3 port before using this module.",
		"C(state=absent) removes the VRRP group if it exists on the device.",
		"VRRP cannot be configured on loopback interfaces.",
	]
	options: {
		group: {
			description: [
				"VRRP group number.",
			]
			required: true
		}
		interface: {
			description: [
				"Full name of interface that is being managed for VRRP.",
			]
			required: true
		}
		interval: {
			description: [
				"Time interval between advertisement or 'default' keyword",
			]
			required:      false
			default:       1
			version_added: 2.6
		}
		priority: {
			description: [
				"VRRP priority or 'default' keyword",
			]
			default: 100
		}
		preempt: {
			description: [
				"Enable/Disable preempt.",
			]
			type:    "bool"
			default: "yes"
		}
		vip: description: [
			"VRRP virtual IP address or 'default' keyword",
		]
		authentication: description: [
			"Clear text authentication string or 'default' keyword",
		]
		admin_state: {
			description: [
				"Used to enable or disable the VRRP process.",
			]
			choices: ["shutdown", "no shutdown", "default"]
			default: "shutdown"
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
