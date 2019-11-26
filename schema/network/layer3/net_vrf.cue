package ansible

module: net_vrf: {
	module:            "net_vrf"
	version_added:     "2.4"
	author:            "Ricardo Carrillo Cruz (@rcarrillocruz)"
	short_description: "Manage VRFs on network devices"
	description: [
		"This module provides declarative management of VRFs on network devices.",
	]

	deprecated: {
		removed_in:  "2.13"
		alternative: "Use platform-specific \"[netos]_vrf\" module"
		why:         "Updated modules released with more functionality"
	}
	extends_documentation_fragment: "network_agnostic"
	options: {
		name: description: [
			"Name of the VRF.",
		]
		interfaces: description: [
			"List of interfaces the VRF should be configured on.",
		]
		aggregate: description: "List of VRFs definitions"
		purge: {
			description: [
				"Purge VRFs not defined in the I(aggregate) parameter.",
			]
			default: false
		}
		state: {
			description: [
				"State of the VRF configuration.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
