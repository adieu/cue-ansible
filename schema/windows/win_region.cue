package ansible

module: win_region: {
	module:            "win_region"
	version_added:     "2.3"
	short_description: "Set the region and format settings"
	description: [
		"Set the location settings of a Windows Server.",
		"Set the format settings of a Windows Server.",
		"Set the unicode language settings of a Windows Server.",
		"Copy across these settings to the default profile.",
	]
	options: {
		location: {
			description: [
				"The location to set for the current user, see U(https://msdn.microsoft.com/en-us/library/dd374073.aspx) for a list of GeoIDs you can use and what location it relates to.",
				"This needs to be set if C(format) or C(unicode_language) is not set.",
			]

			type: "str"
		}
		format: {
			description: [
				"The language format to set for the current user, see U(https://msdn.microsoft.com/en-us/library/system.globalization.cultureinfo.aspx) for a list of culture names to use.",
				"This needs to be set if C(location) or C(unicode_language) is not set.",
			]
			type: "str"
		}
		unicode_language: {
			description: [
				"The unicode language format to set for all users, see U(https://msdn.microsoft.com/en-us/library/system.globalization.cultureinfo.aspx) for a list of culture names to use.",
				"This needs to be set if C(location) or C(format) is not set. After setting this value a reboot is required for it to take effect.",
			]

			type: "str"
		}
		copy_settings: {
			description: [
				"This will copy the current format and location values to new user profiles and the welcome screen. This will only run if C(location), C(format) or C(unicode_language) has resulted in a change. If this process runs then it will always result in a change.",
			]

			type:    "bool"
			default: false
		}
	}
	seealso: [{
		module: "win_timezone"
	}]
	author: ["Jordan Borean (@jborean93)"]
}
