package ansible

module: cnos_logging: {
	module:            "cnos_logging"
	version_added:     "2.8"
	author:            "Anil Kumar Muraleedharan (@amuraleedhar)"
	short_description: "Manage logging on network devices"
	description: [
		"This module provides declarative management of logging on Cisco Cnos devices.",
	]

	notes: [
		"Tested against CNOS 10.9.1",
	]
	options: {
		dest: {
			description: [
				"Destination of the logs. Lenovo uses the term server instead of host in its CLI.",
			]

			choices: ["server", "console", "monitor", "logfile"]
		}
		name: description: [
			"If value of C(dest) is I(file) it indicates file-name and for I(server) indicates the server name to be notified.",
		]

		size: {
			description: [
				"Size of buffer. The acceptable value is in range from 4096 to 4294967295 bytes.",
			]

			default: 10485760
		}
		facility: description: [
			"Set logging facility. This is applicable only for server logging",
		]
		level: {
			description: [
				"Set logging severity levels. 0-emerg;1-alert;2-crit;3-err;4-warn; 5-notif;6-inform;7-debug",
			]

			default: 5
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
}
