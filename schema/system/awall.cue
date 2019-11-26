package ansible

module: awall: {
	module:            "awall"
	short_description: "Manage awall policies"
	version_added:     "2.4"
	author:            "Ted Trask (@tdtrask) <ttrask01@yahoo.com>"
	description: [
		"This modules allows for enable/disable/activate of I(awall) policies.",
		"Alpine Wall (I(awall)) generates a firewall configuration from the enabled policy files and activates the configuration on the system.",
	]

	options: {
		name: {
			description: [
				"One or more policy names.",
			]
			type: "list"
		}
		state: {
			description: [
				"Whether the policies should be enabled or disabled.",
			]
			type: "str"
			choices: ["disabled", "enabled"]
			default: "enabled"
		}
		activate: {
			description: [
				"Activate the new firewall rules.",
				"Can be run with other steps or on its own.",
			]
			type:    "bool"
			default: false
		}
	}
}
