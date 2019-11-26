package ansible

module: ejabberd_user: {
	module:            "ejabberd_user"
	version_added:     "1.5"
	author:            "Peter Sprygada (@privateip)"
	short_description: "Manages users for ejabberd servers"
	requirements: [
		"ejabberd with mod_admin_extra",
	]
	description: [
		"This module provides user management for ejabberd servers",
	]
	options: {
		username: {
			description: [
				"the name of the user to manage",
			]
			required: true
		}
		host: {
			description: [
				"the ejabberd host associated with this username",
			]
			required: true
		}
		password: {
			description: [
				"the password to assign to the username",
			]
			required: false
		}
		logging: {
			description: [
				"enables or disables the local syslog facility for this module",
			]
			required: false
			default:  false
			type:     "bool"
		}
		state: {
			description: [
				"describe the desired state of the user to be managed",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
	}
	notes: [
		"Password parameter is required for state == present only",
		"Passwords must be stored in clear text for this release",
		"The ejabberd configuration file must include mod_admin_extra as a module.",
	]
}
