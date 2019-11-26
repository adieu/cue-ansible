package ansible

module: vultr_user: {
	module:            "vultr_user"
	short_description: "Manages users on Vultr."
	description: [
		"Create, update and remove users.",
	]
	version_added: "2.5"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name of the user"]
			required: true
			type:     "str"
		}
		email: {
			description: [
				"Email of the user.",
				"Required if C(state=present).",
			]
			type: "str"
		}
		password: {
			description: [
				"Password of the user.",
				"Only considered while creating a user or when C(force=yes).",
			]
			type: "str"
		}
		force: {
			description: ["Password will only be changed with enforcement."]
			default: false
			type:    "bool"
		}
		api_enabled: {
			description: ["Whether the API is enabled or not."]
			default: true
			type:    "bool"
		}
		acls: {
			description: [
				"List of ACLs this users should have, see U(https://www.vultr.com/api/#user_user_list).",
				"Required if C(state=present).",
				"One or more of the choices list, some depend on each other.",
			]
			choices: [
				"manage_users",
				"subscriptions",
				"provisioning",
				"billing",
				"support",
				"abuse",
				"dns",
				"upgrade",
			]
			aliases: ["acl"]
			type: "list"
		}
		state: {
			description: ["State of the user."]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
	}
	extends_documentation_fragment: "vultr"
}
