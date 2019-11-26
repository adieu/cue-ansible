package ansible

module: na_elementsw_admin_users: {
	module: "na_elementsw_admin_users"

	short_description: "NetApp Element Software Manage Admin Users"
	extends_documentation_fragment: [
		"netapp.solidfire",
	]
	version_added: "2.7"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Create, destroy, or update admin users on SolidFire",
	]

	options: {

		state: {
			description: [
				"Whether the specified account should exist or not.",
			]
			required: true
			choices: ["present", "absent"]
		}

		element_username: {
			description: [
				"Unique username for this account. (May be 1 to 64 characters in length).",
			]
			required: true
		}

		element_password: description: [
			"The password for the new admin account. Setting the password attribute will always reset your password, even if the password is the same",
		]

		acceptEula: {
			description: [
				"Boolean, true for accepting Eula, False Eula",
			]
			type: "bool"
		}

		access: description: ["A list of type the admin has access to"]
	}
}
