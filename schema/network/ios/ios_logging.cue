package ansible

module: ios_logging: {
	module:            "ios_logging"
	version_added:     "2.4"
	author:            "Trishna Guha (@trishnaguha)"
	short_description: "Manage logging on network devices"
	description: [
		"This module provides declarative management of logging on Cisco Ios devices.",
	]

	notes: [
		"Tested against IOS 15.6",
	]
	options: {
		dest: {
			description: [
				"Destination of the logs.",
			]
			choices: ["on", "host", "console", "monitor", "buffered", "trap"]
		}
		name: description: [
			"The hostname or IP address of the destination.",
			"Required when I(dest=host).",
		]
		size: {
			description: [
				"Size of buffer. The acceptable value is in range from 4096 to 4294967295 bytes.",
			]

			default: 4096
		}
		facility: description: [
			"Set logging facility.",
		]
		level: {
			description: [
				"Set logging severity levels.",
			]
			default: "debugging"
			choices: ["emergencies", "alerts", "critical", "errors", "warnings", "notifications", "informational", "debugging"]
		}
		aggregate: description: "List of logging definitions."
		state: {
			description: [
				"State of the logging configuration.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "ios"
}
