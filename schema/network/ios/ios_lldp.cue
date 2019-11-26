package ansible

module: ios_lldp: {
	module:            "ios_lldp"
	version_added:     "2.5"
	author:            "Ganesh Nalawade (@ganeshrn)"
	short_description: "Manage LLDP configuration on Cisco IOS network devices."
	description: [
		"This module provides declarative management of LLDP service on Cisco IOS network devices.",
	]

	notes: [
		"Tested against IOS 15.2",
	]
	options: state: {
		description: [
			"State of the LLDP configuration. If value is I(present) lldp will be enabled else if it is I(absent) it will be disabled.",
		]

		default: "present"
		choices: ["present", "absent"]
	}
	extends_documentation_fragment: "ios"
}
