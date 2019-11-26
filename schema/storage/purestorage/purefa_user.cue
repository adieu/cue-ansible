package ansible

module: purefa_user: {
	module:            "purefa_user"
	version_added:     "2.8"
	short_description: "Create, modify or delete FlashArray local user account"
	description: [
		"Create, modify or delete local users on a Pure Storage FlashArray.",
	]
	author: [
		"Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>",
	]
	options: {
		state: {
			description: [
				"Create, delete or update local user account",
			]
			default: "present"
			type:    "str"
			choices: ["absent", "present"]
		}
		name: {
			description: [
				"The name of the local user account",
			]
			type: "str"
		}
		role: {
			description: [
				"Sets the local user's access level to the array",
			]
			type: "str"
			choices: ["readonly", "storage_admin", "array_admin"]
		}
		password: {
			description: [
				"Password for the local user.",
			]
			type: "str"
		}
		old_password: {
			description: [
				"If changing an existing password, you must provide the old password for security",
			]
			type: "str"
		}
		api: {
			description: [
				"Define whether to create an API token for this user",
				"Token can be exposed using the I(debug) module",
			]
			type:    "bool"
			default: false
		}
	}
	extends_documentation_fragment: ["purestorage.fa"]
}
