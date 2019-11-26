package ansible

module: cpm_plugcontrol: {
	module:            "cpm_plugcontrol"
	version_added:     "2.8"
	author:            "Western Telematic Inc. (@wtinetworkgear)"
	short_description: "Get and Set Plug actions on WTI OOB and PDU power devices"
	description: [
		"Get and Set Plug actions on WTI OOB and PDU devices",
	]
	options: {
		cpm_action: {
			description: [
				"This is the Action to send the module.",
			]
			required: true
			choices: ["getplugcontrol", "setplugcontrol"]
		}
		cpm_url: {
			description: [
				"This is the URL of the WTI device  to send the module.",
			]
			required: true
		}
		cpm_username: description: [
			"This is the Username of the WTI device to send the module.",
		]
		cpm_password: description: [
			"This is the Password of the WTI device to send the module.",
		]
		use_https: {
			description: [
				"Designates to use an https connection or http connection.",
			]
			required: false
			type:     "bool"
			default:  true
		}
		validate_certs: {
			description: [
				"If false, SSL certificates will not be validated. This should only be used",
				"on personally controlled sites using self-signed certificates.",
			]
			required: false
			type:     "bool"
			default:  true
		}
		use_proxy: {
			description: "Flag to control if the lookup will observe HTTP proxy environment variables when present."
			required:    false
			type:        "bool"
			default:     false
		}
		plug_id: {
			description: [
				"This is the plug number or the plug name that is to be manipulated For the plugget command, the plug_id 'all' will return the status of all the plugs the user has rights to access.",
			]

			required: true
		}
		plug_state: {
			description: [
				"This is what action to take on the plug.",
			]
			required: false
			choices: ["on", "off", "boot", "default"]
		}
	}
}
