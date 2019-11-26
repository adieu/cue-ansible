package ansible

module: asa_acl: {
	module:            "asa_acl"
	version_added:     "2.2"
	author:            "Patrick Ogenstad (@ogenstad)"
	short_description: "Manage access-lists on a Cisco ASA"
	description: [
		"This module allows you to work with access-lists on a Cisco ASA device.",
	]
	extends_documentation_fragment: "asa"
	options: {
		lines: {
			description: [
				"The ordered set of commands that should be configured in the section.  The commands must be the exact same commands as found in the device running-config.  Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser.",
			]

			required: true
			aliases: ["commands"]
		}
		before: description: [
			"The ordered set of commands to push on to the command stack if a change needs to be made.  This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system.",
		]

		after: description: [
			"The ordered set of commands to append to the end of the command stack if a changed needs to be made.  Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.",
		]

		match: {
			description: [
				"Instructs the module on the way to perform the matching of the set of commands against the current device config.  If match is set to I(line), commands are matched line by line.  If match is set to I(strict), command lines are matched with respect to position.  Finally if match is set to I(exact), command lines must be an equal match.",
			]

			default: "line"
			choices: ["line", "strict", "exact"]
		}
		replace: {
			description: [
				"Instructs the module on the way to perform the configuration on the device.  If the replace argument is set to I(line) then the modified lines are pushed to the device in configuration mode.  If the replace argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct.",
			]

			default: "line"
			choices: ["line", "block"]
		}
		force: {
			description: [
				"The force argument instructs the module to not consider the current devices running-config.  When set to true, this will cause the module to push the contents of I(src) into the device without first checking if already configured.",
			]

			type:    "bool"
			default: "no"
		}
		config: description: [
			"The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current running-config for every task in a playbook.  The I(config) argument allows the implementer to pass in the configuration to use as the base config for comparison.",
		]
	}
}
