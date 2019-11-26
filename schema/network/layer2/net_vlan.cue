package ansible

module: net_vlan: {
	module:            "net_vlan"
	version_added:     "2.4"
	author:            "Ricardo Carrillo Cruz (@rcarrillocruz)"
	short_description: "Manage VLANs on network devices"
	description: [
		"This module provides declarative management of VLANs on network devices.",
	]

	deprecated: {
		removed_in:  "2.13"
		alternative: "Use platform-specific \"[netos]_vlans\" module"
		why:         "Updated modules released with more functionality"
	}
	extends_documentation_fragment: "network_agnostic"
	options: {
		name: description: [
			"Name of the VLAN.",
		]
		vlan_id: description: [
			"ID of the VLAN.",
		]
		interfaces: description: [
			"List of interfaces the VLAN should be configured on.",
		]
		aggregate: description: "List of VLANs definitions."
		purge: {
			description: [
				"Purge VLANs not defined in the I(aggregate) parameter.",
			]
			default: false
		}
		state: {
			description: [
				"State of the VLAN configuration.",
			]
			default: "present"
			choices: ["present", "absent", "active", "suspend"]
		}
	}
}
