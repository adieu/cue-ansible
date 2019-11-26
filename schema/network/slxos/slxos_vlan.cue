package ansible

module: slxos_vlan: {
	module:            "slxos_vlan"
	version_added:     "2.6"
	author:            "Lindsay Hill (@lindsayhill)"
	short_description: "Manage VLANs on Extreme Networks SLX-OS network devices"
	description: [
		"This module provides declarative management of VLANs on Extreme SLX-OS network devices.",
	]

	notes: [
		"Tested against SLX-OS 18r.1.00",
	]
	options: {
		name: description: [
			"Name of the VLAN.",
		]
		vlan_id: {
			description: [
				"ID of the VLAN. Range 1-4094.",
			]
			required: true
		}
		interfaces: {
			description: [
				"List of interfaces that should be associated to the VLAN.",
			]
			required: true
		}
		delay: {
			description: [
				"Delay the play should wait to check for declarative intent params values.",
			]
			default: 10
		}
		aggregate: description: "List of VLANs definitions."
		purge: {
			description: [
				"Purge VLANs not defined in the I(aggregate) parameter.",
			]
			type:    "bool"
			default: false
		}
		state: {
			description: [
				"State of the VLAN configuration.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
