package ansible

module: eos_vrf: {
	module:            "eos_vrf"
	version_added:     "2.4"
	author:            "Ricardo Carrillo Cruz (@rcarrillocruz)"
	short_description: "Manage VRFs on Arista EOS network devices"
	description: [
		"This module provides declarative management of VRFs on Arista EOS network devices.",
	]

	notes: [
		"Tested against EOS 4.15",
	]
	options: {
		name: {
			description: [
				"Name of the VRF.",
			]
			required: true
		}
		rd: description: [
			"Route distinguisher of the VRF",
		]
		interfaces: description: [
			"Identifies the set of interfaces that should be configured in the VRF. Interfaces must be routed interfaces in order to be placed into a VRF. The name of interface should be in expanded format and not abbreviated.",
		]

		associated_interfaces: {
			description: [
				"This is a intent option and checks the operational state of the for given vrf C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vrf interfaces on device it will result in failure.",
			]

			version_added: "2.5"
		}
		aggregate: description: "List of VRFs definitions"
		purge: {
			description: [
				"Purge VRFs not defined in the I(aggregate) parameter.",
			]
			default: false
			type:    "bool"
		}
		delay: {
			description: [
				"Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state arguments.",
			]

			default: 10
		}
		state: {
			description: [
				"State of the VRF configuration.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "eos"
}
