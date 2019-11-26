package ansible

module: bigip_password_policy: {
	module:            "bigip_password_policy"
	short_description: "Manages the authentication password policy on a BIG-IP"
	description: [
		"Manages the authentication password policy on a BIG-IP.",
	]
	version_added: 2.8
	options: {
		expiration_warning: {
			description: [
				"Specifies the number of days before a password expires.",
				"Based on this value, the BIG-IP system automatically warns users when their password is about to expire.",
			]

			type: "int"
		}
		max_duration: {
			description: [
				"Specifies the maximum number of days a password is valid.",
			]
			type: "int"
		}
		max_login_failures: {
			description: [
				"Specifies the number of consecutive unsuccessful login attempts that the system allows before locking out the user.",
				"Specify zero (0) to disable this parameter.",
			]
			type: "int"
		}
		min_duration: {
			description: [
				"Specifies the minimum number of days a password is valid.",
			]
			type: "int"
		}
		min_length: {
			description: [
				"Specifies the minimum number of characters in a valid password.",
				"This value must be between 6 and 255.",
			]
			type: "int"
		}
		policy_enforcement: {
			description: [
				"Enables or disables the password policy on the BIG-IP system.",
			]
			type: "bool"
		}
		required_lowercase: {
			description: [
				"Specifies the number of lowercase alpha characters that must be present in a password for the password to be valid.",
			]

			type: "int"
		}
		required_numeric: {
			description: [
				"Specifies the number of numeric characters that must be present in a password for the password to be valid.",
			]

			type: "int"
		}
		required_special: {
			description: [
				"Specifies the number of special characters that must be present in a password for the password to be valid.",
			]

			type: "int"
		}
		required_uppercase: {
			description: [
				"Specifies the number of uppercase alpha characters that must be present in a password for the password to be valid.",
			]

			type: "int"
		}
		password_memory: {
			description: [
				"Specifies whether the user has configured the BIG-IP system to remember a password on a specific computer and how many passwords to remember.",
			]

			type: "int"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Tim Rupp (@caphrim007)"]
}
