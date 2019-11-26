package ansible

module: onyx_ptp_interface: {
	module:            "onyx_ptp_interface"
	version_added:     "2.8"
	author:            "Anas Badaha (@anasb)"
	short_description: "Configures PTP on interface"
	description: [
		"This module provides declarative management of PTP interfaces configuration on Mellanox ONYX network devices.",
	]

	notes: [
		"Tested on ONYX 3.6.8130",
		"PTP Protocol must be enabled on switch.",
		"Interface must not be a switch port interface.",
	]
	options: {
		name: {
			description: [
				"ethernet or vlan interface name that we want to configure PTP on it",
			]
			required: true
		}
		state: {
			description: [
				"Enable/Disable PTP on Interface",
			]
			default: "enabled"
			choices: [
				"enabled",
				"disabled",
			]
		}
		delay_request: description: [
			"configure PTP delay request interval, Range 0-5",
		]
		announce_interval: description: [
			"configure PTP announce setting for interval, Range -3-1",
		]
		announce_timeout: description: [
			"configure PTP announce setting for timeout, Range 2-10",
		]
		sync_interval: description: ["configure PTP sync interval, Range -7--1"]
	}
}
