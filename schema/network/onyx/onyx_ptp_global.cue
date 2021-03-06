package ansible

module: onyx_ptp_global: {
	module:            "onyx_ptp_global"
	version_added:     "2.8"
	author:            "Anas Badaha (@anasb)"
	short_description: "Configures PTP Global parameters"
	description: [
		"This module provides declarative management of PTP Global configuration on Mellanox ONYX network devices.",
	]

	notes: [
		"Tested on ONYX 3.6.8130 ptp and ntp protocols cannot be enabled at the same time",
	]

	options: {
		ptp_state: {
			description: [
				"PTP state.",
			]
			choices: ["enabled", "disabled"]
			default: "enabled"
		}
		ntp_state: {
			description: [
				"NTP state.",
			]
			choices: ["enabled", "disabled"]
		}
		domain: description: [
			"set PTP domain number Range 0-127",
		]
		primary_priority: description: [
			"set PTP primary priority Range 0-225",
		]
		secondary_priority: description: ["set PTP secondary priority Range 0-225"]
	}
}
