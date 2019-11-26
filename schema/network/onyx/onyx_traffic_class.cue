package ansible

module: onyx_traffic_class: {
	module:            "onyx_traffic_class"
	version_added:     "2.9"
	author:            "Anas Badaha (@anasb)"
	short_description: "Configures Traffic Class"
	description: [
		"This module provides declarative management of Traffic Class configuration on Mellanox ONYX network devices.",
	]

	options: {
		state: {
			description: [
				"enable congestion control on interface.",
			]
			choices: ["enabled", "disabled"]
			default: "enabled"
		}
		interfaces: {
			description: [
				"list of interfaces name.",
			]
			required: true
		}
		tc: {
			description: [
				"traffic class, range 0-7.",
			]
			required: true
		}
		congestion_control: {
			description: [
				"configure congestion control on interface.",
			]
			suboptions: {
				control: {
					description: [
						"congestion control type.",
					]
					choices: ["red", "ecn", "both"]
					required: true
				}
				threshold_mode: {
					description: [
						"congestion control threshold mode.",
					]
					choices: ["absolute", "relative"]
					required: true
				}
				min_threshold: {
					description: [
						"Set minimum-threshold value (in KBs) for marking traffic-class queue.",
					]
					required: true
				}
				max_threshold: {
					description: [
						"Set maximum-threshold value (in KBs) for marking traffic-class queue.",
					]
					required: true
				}
			}
		}
		dcb: {
			description: [
				"configure dcb control on interface.",
			]
			suboptions: {
				mode: {
					description: [
						"dcb control mode.",
					]
					choices: ["strict", "wrr"]
					required: true
				}
				weight: description: ["Relevant only for wrr mode."]
			}
		}
	}
}
