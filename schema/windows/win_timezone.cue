package ansible

module: win_timezone: {
	module:            "win_timezone"
	version_added:     "2.1"
	short_description: "Sets Windows machine timezone"
	description: [
		"Sets machine time to the specified timezone.",
	]
	options: timezone: {
		description: [
			"Timezone to set to.",
			"Example: Central Standard Time",
		]
		type:     "str"
		required: true
	}
	notes: [
		"The module will check if the provided timezone is supported on the machine.",
		"A list of possible timezones is available from C(tzutil.exe /l) and from U(https://msdn.microsoft.com/en-us/library/ms912391.aspx)",
		"If running on Server 2008 the hotfix U(https://support.microsoft.com/en-us/help/2556308/tzutil-command-line-tool-is-added-to-windows-vista-and-to-windows-server-2008) needs to be installed to be able to run this module.",
	]

	seealso: [{
		module: "win_region"
	}]
	author: ["Phil Schwartz (@schwartzmx)"]
}
