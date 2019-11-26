package ansible

module: ucs_timezone: {
	module:            "ucs_timezone"
	short_description: "Configures timezone on Cisco UCS Manager"
	description: [
		"Configures timezone on Cisco UCS Manager.",
		"Examples can be used with the L(UCS Platform Emulator,https://communities.cisco.com/ucspe).",
	]
	extends_documentation_fragment: "ucs"
	options: {
		state: {
			description: [
				"If C(absent), will unset timezone.",
				"If C(present), will set or update timezone.",
			]
			choices: ["absent", "present"]
			default: "present"
		}

		admin_state: {
			description: [
				"The admin_state setting",
				"The enabled admin_state indicates the timezone configuration is utilized by UCS Manager.",
				"The disabled admin_state indicates the timezone configuration is ignored by UCS Manager.",
			]
			choices: ["disabled", "enabled"]
			default: "enabled"
		}

		description: {
			description: [
				"A user-defined description of the timezone.",
				"Enter up to 256 characters.",
				"You can use any characters or spaces except the following:",
				"` (accent mark),  (backslash), ^ (carat), \" (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).",
			]
			aliases: ["descr"]
			default: ""
		}

		timezone: description: [
			"The timezone name.",
			"Time zone names are from the L(tz database,https://en.wikipedia.org/wiki/List_of_tz_database_time_zones)",
			"The timezone name is case sensitive.",
			"The timezone name can be between 0 and 510 alphanumeric characters.",
			"You cannot use spaces or any special characters other than",
			"\"-\" (hyphen), \"_\" (underscore), \"/\" (backslash).",
		]
	}

	requirements: [
		"ucsmsdk",
	]
	author: [
		"John McDonough (@movinalot)",
		"CiscoUcs (@CiscoUcs)",
	]
	version_added: "2.7"
}
