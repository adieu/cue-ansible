package ansible

module: bigip_smtp: {
	module:            "bigip_smtp"
	short_description: "Manages SMTP settings on the BIG-IP"
	description: [
		"Allows configuring of the BIG-IP to send mail via an SMTP server by configuring the parameters of an SMTP server.",
	]

	version_added: 2.6
	options: {
		name: {
			description: [
				"Specifies the name of the SMTP server configuration.",
			]
			type:     "str"
			required: true
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
		smtp_server: {
			description: [
				"SMTP server host name in the format of a fully qualified domain name.",
				"This value is required when create a new SMTP configuration.",
			]
			type: "str"
		}
		smtp_server_port: {
			description: [
				"Specifies the SMTP port number.",
				"When creating a new SMTP configuration, the default is C(25) when C(encryption) is C(none) or C(tls). The default is C(465) when C(ssl) is selected.",
			]

			type: "int"
		}
		local_host_name: {
			description: [
				"Host name used in SMTP headers in the format of a fully qualified domain name. This setting does not refer to the BIG-IP system's hostname.",
			]

			type: "str"
		}
		from_address: {
			description: [
				"Email address that the email is being sent from. This is the \"Reply-to\" address that the recipient sees.",
			]

			type: "str"
		}
		encryption: {
			description: [
				"Specifies whether the SMTP server requires an encrypted connection in order to send mail.",
			]

			type: "str"
			choices: [
				"none",
				"ssl",
				"tls",
			]
		}
		authentication: {
			description: [
				"Credentials can be set on an SMTP server's configuration even if that authentication is not used (think staging configs or emergency changes). This parameter acts as a switch to make the specified C(smtp_server_username) and C(smtp_server_password) parameters active or not.",
				"When C(yes), the authentication parameters will be active.",
				"When C(no), the authentication parameters will be inactive.",
			]
			type: "bool"
		}
		smtp_server_username: {
			description: [
				"User name that the SMTP server requires when validating a user.",
			]
			type: "str"
		}
		smtp_server_password: {
			description: [
				"Password that the SMTP server requires when validating a user.",
			]
			type: "str"
		}
		state: {
			description: [
				"When C(present), ensures that the SMTP configuration exists.",
				"When C(absent), ensures that the SMTP configuration does not exist.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
		update_password: {
			description: [
				"Passwords are stored encrypted, so the module cannot know if the supplied C(smtp_server_password) is the same or different than the existing password. This parameter controls the updating of the C(smtp_server_password) credential.",
				"When C(always), will always update the password.",
				"When C(on_create), will only set the password for newly created SMTP server configurations.",
			]

			type: "str"
			choices: [
				"always",
				"on_create",
			]
			default: "always"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Tim Rupp (@caphrim007)"]
}
