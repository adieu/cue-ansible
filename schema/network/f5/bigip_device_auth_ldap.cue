package ansible

module: bigip_device_auth_ldap: {
	module:            "bigip_device_auth_ldap"
	short_description: "Manage LDAP device authentication settings on BIG-IP"
	description: [
		"Manage LDAP device authentication settings on BIG-IP.",
	]
	version_added: 2.8
	options: {
		servers: {
			description: [
				"Specifies the LDAP servers that the system must use to obtain authentication information. You must specify a server when you create an LDAP configuration object.",
			]

			type: "list"
		}
		port: {
			description: [
				"Specifies the port that the system uses for access to the remote host server.",
				"When configuring LDAP device authentication for the first time, if this parameter is not specified, the default port is C(389).",
			]

			type: "int"
		}
		remote_directory_tree: {
			description: [
				"Specifies the file location (tree) of the user authentication database on the server.",
			]

			type: "str"
		}
		scope: {
			description: [
				"Specifies the level of the remote Active Directory or LDAP directory that the system should search for the user authentication.",
			]

			type: "str"
			choices: [
				"sub",
				"one",
				"base",
			]
		}
		bind_dn: {
			description: [
				"Specifies the distinguished name for the Active Directory or LDAP server user ID.",
				"The BIG-IP client authentication module does not support Active Directory or LDAP servers that do not perform bind referral when authenticating referred accounts.",
				"Therefore, if you plan to use Active Directory or LDAP as your authentication source and want to use referred accounts, make sure your servers perform bind referral.",
			]

			type: "str"
		}
		bind_password: {
			description: [
				"Specifies a password for the Active Directory or LDAP server user ID.",
			]
			type: "str"
		}
		user_template: {
			description: [
				"Specifies the distinguished name of the user who is logging on.",
				"You specify the template as a variable that the system replaces with user-specific information during the logon attempt.",
				"For example, you could specify a user template such as C(%s@siterequest.com) or C(uxml:id=%s,ou=people,dc=siterequest,dc=com).",
				"When a user attempts to log on, the system replaces C(%s) with the name the user specified in the Basic Authentication dialog box, and passes that as the distinguished name for the bind operation.",
				"The system passes the associated password as the password for the bind operation.",
				"This field can contain only one C(%s) and cannot contain any other format specifiers.",
			]

			type: "str"
		}
		check_member_attr: {
			description: [
				"Checks the user's member attribute in the remote LDAP or AD group.",
			]
			type: "bool"
		}
		ssl: {
			description: [
				"Specifies whether the system uses an SSL port to communicate with the LDAP server.",
			]
			type: "str"
			choices: [
				"yes",
				"no",
				"start-tls",
			]
		}
		ca_cert: {
			description: [
				"Specifies the name of an SSL certificate from a certificate authority (CA).",
				"To remove this value, use the reserved value C(none).",
			]
			type: "str"
			aliases: ["ssl_ca_cert"]
		}
		client_key: {
			description: [
				"Specifies the name of an SSL client key.",
				"To remove this value, use the reserved value C(none).",
			]
			type: "str"
			aliases: ["ssl_client_key"]
		}
		client_cert: {
			description: [
				"Specifies the name of an SSL client certificate.",
				"To remove this value, use the reserved value C(none).",
			]
			type: "str"
			aliases: ["ssl_client_cert"]
		}
		validate_certs: {
			description: [
				"Specifies whether the system checks an SSL peer, as a result of which the system requires and verifies the server certificate.",
			]

			type: "bool"
			aliases: ["ssl_check_peer"]
		}
		login_ldap_attr: {
			description: [
				"Specifies the LDAP directory attribute containing the local user name that is associated with the selected directory entry.",
				"When configuring LDAP device authentication for the first time, if this parameter is not specified, the default port is C(samaccountname).",
			]

			type: "str"
		}
		fallback_to_local: {
			description: [
				"Specifies that the system uses the Local authentication method if the remote authentication method is not available.",
			]

			type: "bool"
		}
		state: {
			description: [
				"When C(present), ensures the device authentication method exists.",
				"When C(absent), ensures the device authentication method does not exist.",
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
				"C(always) will always update the C(bind_password).",
				"C(on_create) will only set the C(bind_password) for newly created authentication mechanisms.",
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
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
