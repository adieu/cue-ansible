package ansible

module: win_credential: {
	module:            "win_credential"
	version_added:     "2.8"
	short_description: "Manages Windows Credentials in the Credential Manager"
	description: [
		"Used to create and remove Windows Credentials in the Credential Manager.",
		"This module can manage both standard username/password credentials as well as certificate credentials.",
	]

	options: {
		alias: {
			description: [
				"Adds an alias for the credential.",
				"Typically this is the NetBIOS name of a host if I(name) is set to the DNS name.",
			]

			type: "str"
		}
		attributes: {
			description: [
				"A list of dicts that set application specific attributes for a credential.",
				"When set, existing attributes will be compared to the list as a whole, any differences means all attributes will be replaced.",
			]

			suboptions: {
				name: {
					description: [
						"The key for the attribute.",
						"This is not a unique identifier as multiple attributes can have the same key.",
					]

					type:     "str"
					required: true
				}
				data: {
					description: [
						"The value for the attribute.",
					]
					type: "str"
				}
				data_format: {
					description: [
						"Controls the input type for I(data).",
						"If C(text), I(data) is a text string that is UTF-16LE encoded to bytes.",
						"If C(base64), I(data) is a base64 string that is base64 decoded to bytes.",
					]

					type: "str"
					choices: ["base64", "text"]
					default: "text"
				}
			}
		}
		comment: {
			description: [
				"A user defined comment for the credential.",
			]
			type: "str"
		}
		name: {
			description: [
				"The target that identifies the server or servers that the credential is to be used for.",
				"If the value can be a NetBIOS name, DNS server name, DNS host name suffix with a wildcard character (C(*)), a NetBIOS of DNS domain name that contains a wildcard character sequence, or an asterisk.",
				"See C(TargetName) in U(https://docs.microsoft.com/en-us/windows/desktop/api/wincred/ns-wincred-_credentiala) for more details on what this value can be.",
				"This is used with I(type) to produce a unique credential.",
			]
			type:     "str"
			required: true
		}
		persistence: {
			description: [
				"Defines the persistence of the credential.",
				"If C(local), the credential will persist for all logons of the same user on the same host.",
				"C(enterprise) is the same as C(local) but the credential is visible to the same domain user when running on other hosts and not just localhost.",
			]

			type: "str"
			choices: ["enterprise", "local"]
			default: "local"
		}
		secret: {
			description: [
				"The secret for the credential.",
				"When omitted, then no secret is used for the credential if a new credentials is created.",
				"When I(type) is a password type, this is the password for I(username).",
				"When I(type) is a certificate type, this is the pin for the certificate.",
			]
			type: "str"
		}
		secret_format: {
			description: [
				"Controls the input type for I(secret).",
				"If C(text), I(secret) is a text string that is UTF-16LE encoded to bytes.",
				"If C(base64), I(secret) is a base64 string that is base64 decoded to bytes.",
			]

			type: "str"
			choices: ["base64", "text"]
			default: "text"
		}
		state: {
			description: [
				"When C(absent), the credential specified by I(name) and I(type) is removed.",
				"When C(present), the credential specified by I(name) and I(type) is removed.",
			]

			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		type: {
			description: [
				"The type of credential to store.",
				"This is used with I(name) to produce a unique credential.",
				"When the type is a C(domain) type, the credential is used by Microsoft authentication packages like Negotiate.",
				"When the type is a C(generic) type, the credential is not used by any particular authentication package.",
				"It is recommended to use a C(domain) type as only authentication providers can access the secret.",
			]

			type:     "str"
			required: true
			choices: ["domain_certificate", "domain_password", "generic_certificate", "generic_password"]
		}
		update_secret: {
			description: [
				"When C(always), the secret will always be updated if they differ.",
				"When C(on_create), the secret will only be checked/updated when it is first created.",
				"If the secret cannot be retrieved and this is set to C(always), the module will always result in a change.",
			]

			type: "str"
			choices: ["always", "on_create"]
			default: "always"
		}
		username: {
			description: [
				"When I(type) is a password type, then this is the username to store for the credential.",
				"When I(type) is a credential type, then this is the thumbprint as a hex string of the certificate to use.",
				"When C(type=domain_password), this should be in the form of a Netlogon (DOMAIN\\Username) or a UPN (username@DOMAIN).",
				"If using a certificate thumbprint, the certificate must exist in the C(CurrentUser\\My) certificate store for the executing user.",
			]

			type: "str"
		}
	}
	notes: [
		"This module requires to be run with C(become) so it can access the user's credential store.",
		"There can only be one credential per host and type. if a second credential is defined that uses the same host and type, then the original credential is overwritten.",
	]

	seealso: [{
		module: "win_user_right"
	}, {
		module: "win_whoami"
	}]
	author: ["Jordan Borean (@jborean93)"]
}
