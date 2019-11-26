package ansible

module: bigip_profile_persistence_cookie: {
	module:            "bigip_profile_persistence_cookie"
	short_description: "Manage cookie persistence profiles on BIG-IP"
	description: [
		"Manage cookie persistence profiles on BIG-IP.",
	]
	version_added: 2.8
	options: {
		name: {
			description: [
				"Specifies the name of the profile.",
			]
			type:     "str"
			required: true
		}
		description: {
			description: [
				"Description of the profile.",
			]
			type: "str"
		}
		parent: {
			description: [
				"Specifies the profile from which this profile inherits settings.",
				"When creating a new profile, if this parameter is not specified, the default is the system-supplied C(cookie) profile.",
			]

			type:    "str"
			default: "cookie"
		}
		cookie_method: {
			description: [
				"Specifies the type of cookie processing that the system uses.",
				"When C(hash), specifies that the server provides the cookie, which the system then maps consistently to a specific node. This persistence type requires a C(cookie_name) value.",
				"When C(insert), specifies that the system inserts server information, in the form of a cookie, into the header of the server response.",
				"When C(passive), specifies that the server provides the cookie, formatted with the correct server information and timeout. This persistence type requires a C(cookie_name) value.",
				"When C(rewrite), specifies that the system intercepts the BIGipCookie header, sent from the server, and overwrites the name and value of that cookie.",
			]

			type: "str"
			choices: [
				"hash",
				"insert",
				"passive",
				"rewrite",
			]
		}
		cookie_name: {
			description: [
				"Specifies a unique name for the cookie.",
			]
			type: "str"
		}
		http_only: {
			description: [
				"Specifies whether the httponly attribute should be enabled or disabled for the inserted cookies.",
			]

			type: "bool"
		}
		match_across_services: {
			description: [
				"When C(yes), specifies that all persistent connections from a client IP address that go to the same virtual IP address also go to the same node.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
			]

			type: "bool"
		}
		match_across_virtuals: {
			description: [
				"When C(yes), specifies that all persistent connections from the same client IP address go to the same node.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
			]

			type: "bool"
		}
		match_across_pools: {
			description: [
				"When C(yes), specifies that the system can use any pool that contains this persistence record.",
				"When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.",
			]

			type: "bool"
		}
		cookie_encryption: {
			description: [
				"Specifies the way in which the cookie encryption format is used.",
				"When C(disabled), generates the cookie format unencrypted.",
				"When C(preferred), generate an encrypted cookie, but accepts both encrypted and unencrypted formats.",
				"When C(required), cookie format must be encrypted.",
			]
			type: "str"
			choices: [
				"disabled",
				"preferred",
				"required",
			]
		}
		override_connection_limit: {
			description: [
				"When C(yes), specifies that the system allows you to specify that pool member connection limits will be overridden for persisted clients.",
				"Per-virtual connection limits remain hard limits and are not overridden.",
			]
			type: "bool"
		}
		encrypt_cookie_pool_name: {
			description: [
				"Specifies whether the pool-name in the inserted BIG-IP default cookie should be encrypted.",
			]
			type: "bool"
		}
		always_send: {
			description: [
				"Send the cookie persistence entry on every reply, even if the entry has previously been supplied to the client.",
			]

			type: "bool"
		}
		secure: {
			description: [
				"Specifies whether the secure attribute should be enabled or disabled for the inserted cookies.",
			]

			type: "bool"
		}
		encryption_passphrase: {
			description: [
				"Specifies a passphrase to be used for cookie encryption.",
			]
			type: "str"
		}
		update_password: {
			description: [
				"C(always) will allow to update passphrases if the user chooses to do so. C(on_create) will only set the passphrase for newly created profiles.",
			]

			type: "str"
			choices: [
				"always",
				"on_create",
			]
			default: "always"
		}
		expiration: {
			description: [
				"Specifies the expiration time of the cookie. By default the system generates and uses session cookie. This cookie expires when the user session expires, that is when the browser is closed.",
			]

			suboptions: {
				days: {
					description: [
						"Cookie expiration time in days, the value must be in range from C(0) to C(24855) days.",
					]
					type: "int"
				}
				hours: {
					description: [
						"Cookie expiration time in hours, the value must be in the range from C(0) to C(23) hours.",
					]
					type: "int"
				}
				minutes: {
					description: [
						"Cookie expiration time in minutes, the value must be in the range from C(0) to C(59) minutes.",
					]
					type: "int"
				}
				seconds: {
					description: [
						"Cookie expiration time in seconds, the value must be in the range from C(0) to C(59) seconds.",
					]
					type:    "int"
					default: 0
				}
			}
			type:          "dict"
			version_added: 2.8
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
		state: {
			description: [
				"When C(present), ensures that the profile exists.",
				"When C(absent), ensures the profile is removed.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
