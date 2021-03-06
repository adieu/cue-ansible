package ansible

module: junos_logging: {
	module:            "junos_logging"
	version_added:     "2.4"
	author:            "Ganesh Nalawade (@ganeshrn)"
	short_description: "Manage logging on network devices"
	description: [
		"This module provides declarative management of logging on Juniper JUNOS devices.",
	]

	options: {
		dest: {
			description: [
				"Destination of the logs.",
			]
			choices: ["console", "host", "file", "user"]
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
		active: {
			description: [
				"Specifies whether or not the configuration is active or deactivated",
			]
			default: true
			type:    "bool"
		}
		rotate_frequency: {
			description: [
				"Rotate log frequency in minutes, this is applicable if value of I(dest) is C(file). The acceptable value is in range of 1 to 59. This controls the frequency after which log file is rotated.",
			]

			required: false
		}
		size: {
			description: [
				"Size of the file in archive, this is applicable if value of I(dest) is C(file). The acceptable value is in range from 65536 to 1073741824 bytes.",
			]

			required: false
		}
		files: {
			description: [
				"Number of files to be archived, this is applicable if value of I(dest) is C(file). The acceptable value is in range from 1 to 1000.",
			]

			required: false
		}
	}
	requirements: [
		"ncclient (>=v0.5.2)",
	]
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Tested against vSRX JUNOS version 15.1X49-D15.4, vqfx-10000 JUNOS Version 15.1X53-D60.4.",
		"Recommended connection is C(netconf). See L(the Junos OS Platform Options,../network/user_guide/platform_junos.html).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	extends_documentation_fragment: "junos"
}
