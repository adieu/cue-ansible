package ansible

module: cpm_user: {
	module:            "cpm_user"
	version_added:     "2.7"
	author:            "Western Telematic Inc. (@wtinetworkgear)"
	short_description: "Get various status and parameters from WTI OOB and PDU devices"
	description: [
		"Get/Add/Edit Delete Users from WTI OOB and PDU devices",
	]
	options: {
		cpm_action: {
			description: [
				"This is the Action to send the module.",
			]
			required: true
			choices: ["getuser", "adduser", "edituser", "deleteuser"]
		}
		cpm_url: {
			description: [
				"This is the URL of the WTI device to send the module.",
			]
			required: true
		}
		cpm_username: {
			description: [
				"This is the Basic Authentication Username of the WTI device to send the module.",
			]
			required: true
		}
		cpm_password: {
			description: [
				"This is the Basic Authentication Password of the WTI device to send the module.",
			]
			required: true
		}
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
		user_name: {
			description: [
				"This is the User Name that needs to be create/modified/deleted",
			]
			required: true
		}
		user_pass: {
			description: [
				"This is the User Password that needs to be create/modified/deleted",
				"If the user is being Created this parameter is required",
			]
			required: false
		}
		user_accesslevel: {
			description: [
				"This is the access level that needs to be create/modified/deleted",
				"0 View, 1 User, 2 SuperUser, 3 Administrator",
			]
			required: false
			choices: [0, 1, 2, 3]
		}
		user_accessssh: {
			description: [
				"If the user has access to the WTI device via SSH",
				"0 No , 1 Yes",
			]
			required: false
			choices: [0, 1]
		}
		user_accessserial: {
			description: [
				"If the user has access to the WTI device via Serial ports",
				"0 No , 1 Yes",
			]
			required: false
			choices: [0, 1]
		}
		user_accessweb: {
			description: [
				"If the user has access to the WTI device via Web",
				"0 No , 1 Yes",
			]
			required: false
			choices: [0, 1]
		}
		user_accessapi: {
			description: [
				"If the user has access to the WTI device via RESTful APIs",
				"0 No , 1 Yes",
			]
			required: false
			choices: [0, 1]
		}
		user_accessmonitor: {
			description: [
				"If the user has ability to monitor connection sessions",
				"0 No , 1 Yes",
			]
			required: false
			choices: [0, 1]
		}
		user_accessoutbound: {
			description: [
				"If the user has ability to initiate Outbound connection",
				"0 No , 1 Yes",
			]
			required: false
			choices: [0, 1]
		}
		user_portaccess: {
			description: [
				"If AccessLevel is lower than Administrator, which ports the user has access",
			]
			required: false
		}
		user_plugaccess: {
			description: [
				"If AccessLevel is lower than Administrator, which plugs the user has access",
			]
			required: false
		}
		user_groupaccess: {
			description: [
				"If AccessLevel is lower than Administrator, which Groups the user has access",
			]
			required: false
		}
		user_callbackphone: {
			description: [
				"This is the Call Back phone number used for POTS modem connections",
			]
			required: false
		}
	}
}
