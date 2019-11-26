package ansible

module: cyberark_authentication: {
	module:            "cyberark_authentication"
	short_description: "Module for CyberArk Vault Authentication using PAS Web Services SDK"
	author: [
		"Edward Nunez (@enunez-cyberark) CyberArk BizDev",
		"Cyberark Bizdev (@cyberark-bizdev)",
		"erasmix (@erasmix)",
	]
	version_added: 2.4
	description: [
		"Authenticates to CyberArk Vault using Privileged Account Security Web Services SDK and creates a session fact that can be used by other modules. It returns an Ansible fact called I(cyberark_session). Every module can use this fact as C(cyberark_session) parameter.",
	]

	options: {
		state: {
			default: "present"
			choices: ["present", "absent"]
			description: [
				"Specifies if an authentication logon/logoff and a cyberark_session should be added/removed.",
			]
		}
		username: description: [
			"The name of the user who will logon to the Vault.",
		]
		password: description: [
			"The password of the user.",
		]
		new_password: description: [
			"The new password of the user. This parameter is optional, and enables you to change a password.",
		]
		api_base_url: description: [
			"A string containing the base URL of the server hosting CyberArk's Privileged Account Security Web Services SDK.",
		]
		validate_certs: {
			type:    "bool"
			default: "yes"
			description: [
				"If C(false), SSL certificates will not be validated.  This should only set to C(false) used on personally controlled sites using self-signed certificates.",
			]
		}

		use_shared_logon_authentication: {
			type:    "bool"
			default: "no"
			description: [
				"Whether or not Shared Logon Authentication will be used.",
			]
		}
		use_radius_authentication: {
			type:    "bool"
			default: "no"
			description: [
				"Whether or not users will be authenticated via a RADIUS server. Valid values are true/false.",
			]
		}
		cyberark_session: description: ["Dictionary set by a CyberArk authentication containing the different values to perform actions on a logged-on CyberArk session."]
	}
}
