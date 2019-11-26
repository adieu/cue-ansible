package ansible

module: cp_mgmt_administrator: {
	module:            "cp_mgmt_administrator"
	short_description: "Manages administrator objects on Check Point over Web Services API"
	description: [
		"Manages administrator objects on Check Point devices including creating, updating and removing objects.",
		"All operations are performed over Web Services API.",
	]
	version_added: "2.9"
	author:        "Or Soffer (@chkp-orso)"
	options: {
		name: {
			description: [
				"Object name.",
			]
			type:     "str"
			required: true
		}
		authentication_method: {
			description: [
				"Authentication method.",
			]
			type: "str"
			choices: ["undefined", "check point password", "os password", "securid", "radius", "tacacs", "ad authentication"]
		}
		email: {
			description: [
				"Administrator email.",
			]
			type: "str"
		}
		expiration_date: {
			description: [
				"Format, YYYY-MM-DD, YYYY-mm-ddThh,mm,ss.",
			]
			type: "str"
		}
		multi_domain_profile: {
			description: [
				"Administrator multi-domain profile.",
			]
			type: "str"
		}
		must_change_password: {
			description: [
				"True if administrator must change password on the next login.",
			]
			type: "bool"
		}
		password: {
			description: [
				"Administrator password.",
			]
			type: "str"
		}
		password_hash: {
			description: [
				"Administrator password hash.",
			]
			type: "str"
		}
		permissions_profile: {
			description: [
				"Administrator permissions profile. Permissions profile should not be provided when multi-domain-profile is set to \"Multi-Domain Super User\" or \"Domain Super User\".",
			]

			type: "list"
			suboptions: profile: {
				description: [
					"Permission profile.",
				]
				type: "str"
			}
		}
		phone_number: {
			description: [
				"Administrator phone number.",
			]
			type: "str"
		}
		radius_server: {
			description: [
				"RADIUS server object identified by the name or UID. Must be set when \"authentication-method\" was selected to be \"RADIUS\".",
			]
			type: "str"
		}
		tacacs_server: {
			description: [
				"TACACS server object identified by the name or UID. Must be set when \"authentication-method\" was selected to be \"TACACS\".",
			]
			type: "str"
		}
		tags: {
			description: [
				"Collection of tag identifiers.",
			]
			type: "list"
		}
		color: {
			description: [
				"Color of the object. Should be one of existing colors.",
			]
			type: "str"
			choices: [
				"aquamarine",
				"black",
				"blue",
				"crete blue",
				"burlywood",
				"cyan",
				"dark green",
				"khaki",
				"orchid",
				"dark orange",
				"dark sea green",
				"pink",
				"turquoise",
				"dark blue",
				"firebrick",
				"brown",
				"forest green",
				"gold",
				"dark gold",
				"gray",
				"dark gray",
				"light green",
				"lemon chiffon",
				"coral",
				"sea green",
				"sky blue",
				"magenta",
				"purple",
				"slate blue",
				"violet red",
				"navy blue",
				"olive",
				"orange",
				"red",
				"sienna",
				"yellow",
			]
		}
		comments: {
			description: [
				"Comments string.",
			]
			type: "str"
		}
		details_level: {
			description: [
				"The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.",
			]

			type: "str"
			choices: ["uid", "standard", "full"]
		}
		ignore_warnings: {
			description: [
				"Apply changes ignoring warnings.",
			]
			type: "bool"
		}
		ignore_errors: {
			description: [
				"Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.",
			]
			type: "bool"
		}
	}
	extends_documentation_fragment: "checkpoint_objects"
}
