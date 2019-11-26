package ansible

module: uptimerobot: {
	module:            "uptimerobot"
	short_description: "Pause and start Uptime Robot monitoring"
	description: [
		"This module will let you start and pause Uptime Robot Monitoring",
	]
	author:        "Nate Kingsley (@nate-kingsley)"
	version_added: "1.9"
	requirements: [
		"Valid Uptime Robot API Key",
	]
	options: {
		state: {
			description: [
				"Define whether or not the monitor should be running or paused.",
			]
			required: true
			choices: ["started", "paused"]
		}
		monitorid: {
			description: [
				"ID of the monitor to check.",
			]
			required: true
		}
		apikey: {
			description: [
				"Uptime Robot API key.",
			]
			required: true
		}
	}
	notes: ["Support for adding and removing monitors and alert contacts has not yet been implemented."]
}
