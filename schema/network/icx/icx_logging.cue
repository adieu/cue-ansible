package ansible

module: icx_logging: {
	module:            "icx_logging"
	version_added:     "2.9"
	author:            "Ruckus Wireless (@Commscope)"
	short_description: "Manage logging on Ruckus ICX 7000 series switches"
	description: [
		"This module provides declarative management of logging on Ruckus ICX 7000 series switches.",
	]

	notes: [
		"Tested against ICX 10.1.",
		"For information on using ICX platform, see L(the ICX OS Platform Options guide,../network/user_guide/platform_icx.html).",
	]
	options: {
		dest: {
			description: [
				"Destination of the logs.",
			]
			choices: ["on", "host", "console", "buffered", "persistence", "rfc5424"]
			type: "str"
		}
		name: {
			description: [
				"ipv4 address/ipv6 address/name of  syslog server.",
			]
			type: "str"
		}
		udp_port: {
			description: [
				"UDP port of destination host(syslog server).",
			]
			type: "str"
		}
		facility: {
			description: [
				"Specifies log facility to log messages from the device.",
			]
			choices: [
				"auth",
				"cron",
				"daemon",
				"kern",
				"local0",
				"local1",
				"local2",
				"local3",
				"local4",
				"local5",
				"local6",
				"local7",
				"user",
				"lpr",
				"mail",
				"news",
				"syslog",
				"sys9",
				"sys10",
				"sys11",
				"sys12",
				"sys13",
				"sys14",
				"user",
				"uucp",
			]
			type: "str"
		}
		level: {
			description: [
				"Specifies the message level.",
			]
			type: "list"
			choices: [
				"alerts",
				"critical",
				"debugging",
				"emergencies",
				"errors",
				"informational",
				"notifications",
				"warnings",
			]
		}
		aggregate: {
			description: [
				"List of logging definitions.",
			]
			type: "list"
			suboptions: {
				dest: {
					description: [
						"Destination of the logs.",
					]
					choices: ["on", "host", "console", "buffered", "persistence", "rfc5424"]
					type: "str"
				}
				name: {
					description: [
						"ipv4 address/ipv6 address/name of  syslog server.",
					]
					type: "str"
				}
				udp_port: {
					description: [
						"UDP port of destination host(syslog server).",
					]
					type: "str"
				}
				facility: {
					description: [
						"Specifies log facility to log messages from the device.",
					]
					choices: [
						"auth",
						"cron",
						"daemon",
						"kern",
						"local0",
						"local1",
						"local2",
						"local3",
						"local4",
						"local5",
						"local6",
						"local7",
						"user",
						"lpr",
						"mail",
						"news",
						"syslog",
						"sys9",
						"sys10",
						"sys11",
						"sys12",
						"sys13",
						"sys14",
						"user",
						"uucp",
					]
					type: "str"
				}
				level: {
					description: [
						"Specifies the message level.",
					]
					type: "list"
					choices: [
						"alerts",
						"critical",
						"debugging",
						"emergencies",
						"errors",
						"informational",
						"notifications",
						"warnings",
					]
				}
				state: {
					description: [
						"State of the logging configuration.",
					]
					choices: ["present", "absent"]
					type: "str"
				}
				check_running_config: {
					description: [
						"Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.",
					]

					type: "bool"
				}
			}
		}
		state: {
			description: [
				"State of the logging configuration.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		check_running_config: {
			description: [
				"Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.",
			]

			type:    "bool"
			default: true
		}
	}
}
