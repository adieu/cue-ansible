package ansible

module: syslogger: {
	module: "syslogger"

	short_description: "Log messages in the syslog"

	version_added: "2.4"

	description: [
		"Uses syslog to add log entries to the host.",
		"Can specify facility and priority.",
	]

	options: {
		msg: {
			description: [
				"This is the message to place in syslog",
			]
			required: true
		}
		priority: {
			description: [
				"Set the log priority",
			]
			choices: ["emerg", "alert", "crit", "err", "warning", "notice", "info", "debug"]
			required: false
			default:  "info"
		}
		facility: {
			description: [
				"Set the log facility",
			]
			choices: [
				"kern",
				"user",
				"mail",
				"daemon",
				"auth",
				"lpr",
				"news",
				"uucp",
				"cron",
				"syslog",
				"local0",
				"local1",
				"local2",
				"local3",
				"local4",
				"local5",
				"local6",
				"local7",
			]
			required: false
			default:  "daemon"
		}
		log_pid: {
			description: [
				"Log the pid in brackets",
			]
			type:     "bool"
			required: false
			default:  "no"
		}
	}

	author: ["Tim Rightnour (@garbled1)"]
}
