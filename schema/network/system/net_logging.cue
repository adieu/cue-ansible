package ansible

module: net_logging: {
	module:            "net_logging"
	version_added:     "2.4"
	author:            "Ganesh Nalawade (@ganeshrn)"
	short_description: "Manage logging on network devices"
	description: [
		"This module provides declarative management of logging on network devices.",
	]

	deprecated: {
		removed_in:  "2.13"
		alternative: "Use platform-specific \"[netos]_logging\" module"
		why:         "Updated modules released with more functionality"
	}
	extends_documentation_fragment: "network_agnostic"
	options: {
		dest: {
			description: [
				"Destination of the logs.",
			]
			choices: ["console", "host"]
		}
		name: description: [
			"If value of C(dest) is I(host) it indicates file-name the host name to be notified.",
		]

		facility: description: [
			"Set logging facility.",
		]
		level: description: [
			"Set logging severity levels.",
		]
		aggregate: description: "List of logging definitions."
		purge: {
			description: [
				"Purge logging not defined in the I(aggregate) parameter.",
			]
			default: false
		}
		state: {
			description: [
				"State of the logging configuration.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
