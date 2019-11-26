package ansible

module: cyberark_user: {
	module:            "cyberark_user"
	short_description: "Module for CyberArk User Management using PAS Web Services SDK"
	author: [
		"Edward Nunez (@enunez-cyberark) CyberArk BizDev",
		"Cyberark Bizdev (@cyberark-bizdev)",
		"erasmix (@erasmix)",
	]
	version_added: 2.4
	description: [
		"CyberArk User Management using PAS Web Services SDK.",
		"It currently supports the following actions Get User Details, Add User, Update User, Delete User.",
	]

	options: {
		username: {
			description: [
				"The name of the user who will be queried (for details), added, updated or deleted.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"Specifies the state needed for the user present for create user, absent for delete user.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		cyberark_session: {
			description: [
				"Dictionary set by a CyberArk authentication containing the different values to perform actions on a logged-on CyberArk session, please see M(cyberark_authentication) module for an example of cyberark_session.",
			]

			type:     "dict"
			required: true
		}
		initial_password: {
			description: [
				"The password that the new user will use to log on the first time.",
				"This password must meet the password policy requirements.",
				"This parameter is required when state is present -- Add User.",
			]
			type: "str"
		}
		new_password: {
			description: [
				"The user updated password. Make sure that this password meets the password policy requirements.",
			]
			type: "str"
		}
		email: {
			description: [
				"The user email address.",
			]
			type: "str"
		}
		first_name: {
			description: [
				"The user first name.",
			]
			type: "str"
		}
		last_name: {
			description: [
				"The user last name.",
			]
			type: "str"
		}
		change_password_on_the_next_logon: {
			description: [
				"Whether or not the user must change their password in their next logon.",
			]
			type:    "bool"
			default: false
		}
		expiry_date: {
			description: [
				"The date and time when the user account will expire and become disabled.",
			]
			type: "str"
		}
		user_type_name: {
			description: [
				"The type of user.",
				"The parameter defaults to C(EPVUser).",
			]
			type: "str"
		}
		disabled: {
			description: [
				"Whether or not the user will be disabled.",
			]
			type:    "bool"
			default: false
		}
		location: {
			description: [
				"The Vault Location for the user.",
			]
			type: "str"
		}
		group_name: {
			description: [
				"The name of the group the user will be added to.",
			]
			type: "str"
		}
	}
}
