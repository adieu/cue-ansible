package ansible

module: win_hostname: {
	module:            "win_hostname"
	version_added:     "2.6"
	short_description: "Manages local Windows computer name"
	description: [
		"Manages local Windows computer name.",
		"A reboot is required for the computer name to take effect.",
	]
	options: name: {
		description: [
			"The hostname to set for the computer.",
		]
		type:     "str"
		required: true
	}
	seealso: [{
		module: "win_dns_client"
	}]
	author: ["Ripon Banik (@riponbanik)"]
}
