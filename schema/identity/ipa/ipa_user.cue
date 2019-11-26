package ansible

module: ipa_user: {
	module:            "ipa_user"
	author:            "Thomas Krahn (@Nosmoht)"
	short_description: "Manage FreeIPA users"
	description: [
		"Add, modify and delete user within IPA server",
	]
	options: {
		displayname: description: "Display name"
		update_password: {
			description: [
				"Set password for a user.",
			]
			type:    "str"
			default: "always"
			choices: ["always", "on_create"]
			version_added: 2.8
		}
		givenname: description: "First name"
		krbpasswordexpiration: {
			description: [
				"Date at which the user password will expire",
				"In the format YYYYMMddHHmmss",
				"e.g. 20180121182022 will expire on 21 January 2018 at 18:20:22",
			]
			version_added: 2.5
		}
		loginshell: description: "Login shell"
		mail: description: [
			"List of mail addresses assigned to the user.",
			"If an empty list is passed all assigned email addresses will be deleted.",
			"If None is passed email addresses will not be checked or changed.",
		]
		password: description: [
			"Password for a user. Will not be set for an existing user unless C(update_password) is set to C(always), which is the default.",
		]
		sn: description: "Surname"
		sshpubkey: description: [
			"List of public SSH key.",
			"If an empty list is passed all assigned public keys will be deleted.",
			"If None is passed SSH public keys will not be checked or changed.",
		]
		state: {
			description: "State to ensure"
			default:     "present"
			choices: ["present", "absent", "enabled", "disabled"]
		}
		telephonenumber: description: [
			"List of telephone numbers assigned to the user.",
			"If an empty list is passed all assigned telephone numbers will be deleted.",
			"If None is passed telephone numbers will not be checked or changed.",
		]
		title: description: "Title"
		uid: {
			description: "uid of the user"
			required:    true
			aliases: ["name"]
		}
		uidnumber: {
			description: [
				"Account Settings UID/Posix User ID number",
			]
			version_added: 2.5
		}
		gidnumber: {
			description: [
				"Posix Group ID",
			]
			version_added: 2.5
		}
	}
	extends_documentation_fragment: "ipa.documentation"
	version_added:                  "2.3"
	requirements: [
		"base64",
		"hashlib",
	]
}
