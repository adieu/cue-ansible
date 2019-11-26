package ansible

module: fortios_config: {
	module:            "fortios_config"
	version_added:     "2.3"
	author:            "Benjamin Jolivot (@bjolivot)"
	short_description: "Manage config on Fortinet FortiOS firewall devices"
	description: [
		"This module provides management of FortiOS Devices configuration.",
	]
	extends_documentation_fragment: "fortios"
	options: {
		src: description: [
			"The I(src) argument provides a path to the configuration template to load into the remote device.",
		]

		filter: {
			description: [
				"Only for partial backup, you can restrict by giving expected configuration path (ex. firewall address).",
			]
			default: ""
		}
	}
	requirements: ["pyFG"]
}
