package ansible

module: onyx_igmp: {
	module:            "onyx_igmp"
	version_added:     "2.7"
	author:            "Samer Deeb (@samerd)"
	short_description: "Configures IGMP global parameters"
	description: [
		"This module provides declarative management of IGMP protocol params on Mellanox ONYX network devices.",
	]

	notes: [
		"Tested on ONYX 3.6.6107",
	]
	options: {
		state: {
			description: [
				"IGMP state.",
			]
			required: true
			choices: ["enabled", "disabled"]
		}
		last_member_query_interval: description: [
			"Configure the last member query interval, range 1-25",
		]
		mrouter_timeout: description: [
			"Configure the mrouter timeout, range 60-600",
		]
		port_purge_timeout: description: [
			"Configure the host port purge timeout, range 130-1225",
		]
		proxy_reporting: {
			description: [
				"Configure ip igmp snooping proxy and enable reporting mode",
			]
			choices: ["enabled", "disabled"]
		}
		report_suppression_interval: description: [
			"Configure the report suppression interval, range 1-25",
		]
		unregistered_multicast: {
			description: [
				"Configure the unregistered multicast mode Flood unregistered multicast Forward unregistered multicast to mrouter ports",
			]

			choices: ["flood", "forward-to-mrouter-ports"]
		}
		default_version: {
			description: [
				"Configure the default operating version of the IGMP snooping",
			]
			choices: ["V2", "V3"]
		}
	}
}
