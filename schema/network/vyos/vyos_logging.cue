package ansible

module: vyos_logging: {
	module:            "vyos_logging"
	version_added:     "2.4"
	author:            "Trishna Guha (@trishnaguha)"
	short_description: "Manage logging on network devices"
	description: [
		"This module provides declarative management of logging on Vyatta Vyos devices.",
	]

	notes: [
		"Tested against VyOS 1.1.8 (helium).",
		"This module works with connection C(network_cli). See L(the VyOS OS Platform Options,../network/user_guide/platform_vyos.html).",
	]
	options: {
		dest: {
			description: [
				"Destination of the logs.",
			]
			choices: ["console", "file", "global", "host", "user"]
		}
		name: description: [
			"If value of C(dest) is I(file) it indicates file-name, for I(user) it indicates username and for I(host) indicates the host name to be notified.",
		]

		facility: description: [
			"Set logging facility.",
		]
		level: description: [
			"Set logging severity levels.",
		]
		aggregate: description: "List of logging definitions."
		state: {
			description: [
				"State of the logging configuration.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "vyos"
}
