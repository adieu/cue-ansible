package ansible

module: cs_user: {
	module:            "cs_user"
	short_description: "Manages users on Apache CloudStack based clouds."
	description: [
		"Create, update, disable, lock, enable and remove users.",
	]
	version_added: "2.0"
	author:        "René Moser (@resmo)"
	options: {
		username: {
			description: ["Username of the user."]
			type:     "str"
			required: true
		}
		account: {
			description: [
				"Account the user will be created under.",
				"Required on I(state=present).",
			]
			type: "str"
		}
		password: {
			description: [
				"Password of the user to be created.",
				"Required on I(state=present).",
				"Only considered on creation and will not be updated if user exists.",
			]
			type: "str"
		}
		first_name: {
			description: [
				"First name of the user.",
				"Required on I(state=present).",
			]
			type: "str"
		}
		last_name: {
			description: [
				"Last name of the user.",
				"Required on I(state=present).",
			]
			type: "str"
		}
		email: {
			description: [
				"Email of the user.",
				"Required on I(state=present).",
			]
			type: "str"
		}
		timezone: {
			description: ["Timezone of the user."]
			type: "str"
		}
		keys_registered: {
			description: [
				"If API keys of the user should be generated.",
				"Note: Keys can not be removed by the API again.",
			]
			version_added: "2.4"
			type:          "bool"
			default:       false
		}
		domain: {
			description: ["Domain the user is related to."]
			type:    "str"
			default: "ROOT"
		}
		state: {
			description: [
				"State of the user.",
				"C(unlocked) is an alias for C(enabled).",
			]
			type:    "str"
			default: "present"
			choices: ["present", "absent", "enabled", "disabled", "locked", "unlocked"]
		}
		poll_async: {
			description: ["Poll async jobs until job has finished."]
			type:    "bool"
			default: true
		}
	}
	extends_documentation_fragment: "cloudstack"
}
