package ansible

module: bigip_user: {
	module:            "bigip_user"
	short_description: "Manage user accounts and user attributes on a BIG-IP"
	description: [
		"Manage user accounts and user attributes on a BIG-IP. Typically this module operates only on the REST API users and not the CLI users. When specifying C(root), you may only change the password. Your other parameters will be ignored in this case. Changing the C(root) password is not an idempotent operation. Therefore, it will change it every time this module attempts to change it.",
	]

	version_added: 2.4
	options: {
		full_name: {
			description: [
				"Full name of the user.",
			]
			type: "str"
		}
		username_credential: {
			description: [
				"Name of the user to create, remove or modify.",
				"The C(root) user may not be removed.",
			]
			type:     "str"
			required: true
			aliases: [
				"name",
			]
		}
		password_credential: {
			description: [
				"Set the users password to this unencrypted value. C(password_credential) is required when creating a new account.",
			]

			type: "str"
		}
		shell: {
			description: [
				"Optionally set the users shell.",
			]
			type: "str"
			choices: [
				"bash",
				"none",
				"tmsh",
			]
		}
		partition_access: {
			description: [
				"Specifies the administrative partition to which the user has access. C(partition_access) is required when creating a new account. Should be in the form \"partition:role\".",
				"Valid roles include C(acceleration-policy-editor), C(admin), C(application-editor), C(auditor), C(certificate-manager), C(guest), C(irule-manager), C(manager), C(no-access), C(operator), C(resource-admin), C(user-manager), C(web-application-security-administrator), and C(web-application-security-editor).",
				"Partition portion of tuple should be an existing partition or the value 'all'.",
			]
			type: "list"
		}
		state: {
			description: [
				"Whether the account should exist or not, taking action if the state is different from what is stated.",
			]

			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
		update_password: {
			description: [
				"C(always) will allow to update passwords if the user chooses to do so. C(on_create) will only set the password for newly created users.",
				"When C(username_credential) is C(root), this value will be forced to C(always).",
			]
			type: "str"
			choices: [
				"always",
				"on_create",
			]
			default: "always"
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:          "str"
			default:       "Common"
			version_added: 2.5
		}
	}
	notes: [
		"Requires BIG-IP versions >= 12.0.0",
	]
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
