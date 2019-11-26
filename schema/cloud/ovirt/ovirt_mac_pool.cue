package ansible

module: ovirt_mac_pool: {
	module:            "ovirt_mac_pool"
	short_description: "Module to manage MAC pools in oVirt/RHV"
	version_added:     "2.3"
	author:            "Ondra Machacek (@machacekondra)"
	description: [
		"This module manage MAC pools in oVirt/RHV.",
	]
	options: {
		id: {
			description: [
				"ID of the mac pool to manage.",
			]
			version_added: "2.8"
		}
		name: {
			description: [
				"Name of the MAC pool to manage.",
			]
			required: true
		}
		description: description: [
			"Description of the MAC pool.",
		]
		state: {
			description: [
				"Should the mac pool be present or absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		allow_duplicates: {
			description: [
				"If I(true) allow a MAC address to be used multiple times in a pool.",
				"Default value is set by oVirt/RHV engine to I(false).",
			]
			type: "bool"
		}
		ranges: description: [
			"List of MAC ranges. The from and to should be split by comma.",
			"For example: 00:1a:4a:16:01:51,00:1a:4a:16:01:61",
		]
	}
	extends_documentation_fragment: "ovirt"
}
