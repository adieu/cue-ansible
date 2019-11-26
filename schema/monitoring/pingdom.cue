package ansible

module: pingdom: {
	module:            "pingdom"
	short_description: "Pause/unpause Pingdom alerts"
	description: [
		"This module will let you pause/unpause Pingdom alerts",
	]
	version_added: "1.2"
	author: [
		"Dylan Silva (@thaumos)",
		"Justin Johns (!UNKNOWN)",
	]
	requirements: [
		"This pingdom python library: https://github.com/mbabineau/pingdom-python",
	]
	options: {
		state: {
			description: [
				"Define whether or not the check should be running or paused.",
			]
			required: true
			choices: ["running", "paused"]
		}
		checkid: {
			description: [
				"Pingdom ID of the check.",
			]
			required: true
		}
		uid: {
			description: [
				"Pingdom user ID.",
			]
			required: true
		}
		passwd: {
			description: [
				"Pingdom user password.",
			]
			required: true
		}
		key: {
			description: [
				"Pingdom API key.",
			]
			required: true
		}
	}
	notes: ["This module does not yet have support to add/remove checks."]
}
