package ansible

module: net_lldp_interface: {
	module:            "net_lldp_interface"
	version_added:     "2.4"
	author:            "Ganesh Nalawade (@ganeshrn)"
	short_description: "Manage LLDP interfaces configuration on network devices"
	description: [
		"This module provides declarative management of LLDP interfaces configuration on network devices.",
	]

	deprecated: {
		removed_in:  "2.13"
		alternative: "Use platform-specific \"[netos]_lldp_interfaces\" module"
		why:         "Updated modules released with more functionality"
	}
	extends_documentation_fragment: "network_agnostic"
	options: {
		name: description: [
			"Name of the interface LLDP should be configured on.",
		]
		aggregate: description: "List of interfaces LLDP should be configured on."
		purge: {
			description: [
				"Purge interfaces not defined in the aggregate parameter.",
			]
			default: false
		}
		state: {
			description: [
				"State of the LLDP configuration.",
			]
			default: "present"
			choices: ["present", "absent", "enabled", "disabled"]
		}
	}
}
