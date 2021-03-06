package ansible

module: net_lldp: {
	module:            "net_lldp"
	version_added:     "2.4"
	author:            "Ricardo Carrillo Cruz (@rcarrillocruz)"
	short_description: "Manage LLDP service configuration on network devices"
	description: [
		"This module provides declarative management of LLDP service configuration on network devices.",
	]

	deprecated: {
		removed_in:  "2.13"
		alternative: "Use platform-specific \"[netos]_lldp_global\" module"
		why:         "Updated modules released with more functionality"
	}
	extends_documentation_fragment: "network_agnostic"
	options: state: {
		description: [
			"State of the LLDP service configuration.",
		]
		default: "present"
		choices: ["present", "absent"]
	}
}
