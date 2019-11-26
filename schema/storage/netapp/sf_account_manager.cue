package ansible

module: sf_account_manager: {
	module: "sf_account_manager"
	deprecated: {
		removed_in:  "2.11"
		why:         "This Module has been replaced"
		alternative: "please use M(na_elementsw_account)"
	}
	short_description: "Manage SolidFire accounts"
	extends_documentation_fragment: [
		"netapp.solidfire",
	]
	version_added: "2.3"
	author:        "Sumit Kumar (@timuster) <sumit4@netapp.com>"
	description: [
		"Create, destroy, or update accounts on SolidFire",
	]

	options: {

		state: {
			description: [
				"Whether the specified account should exist or not.",
			]
			required: true
			choices: ["present", "absent"]
		}

		name: {
			description: [
				"Unique username for this account. (May be 1 to 64 characters in length).",
			]
			required: true
		}

		new_name: description: [
			"New name for the user account.",
		]

		initiator_secret: description: [
			"CHAP secret to use for the initiator. Should be 12-16 characters long and impenetrable.",
			"The CHAP initiator secrets must be unique and cannot be the same as the target CHAP secret.",
			"If not specified, a random secret is created.",
		]

		target_secret: description: [
			"CHAP secret to use for the target (mutual CHAP authentication).",
			"Should be 12-16 characters long and impenetrable.",
			"The CHAP target secrets must be unique and cannot be the same as the initiator CHAP secret.",
			"If not specified, a random secret is created.",
		]

		attributes: description: "List of Name/Value pairs in JSON object format."

		account_id: description: [
			"The ID of the account to manage or update.",
		]

		status: description: [
			"Status of the account.",
		]
	}
}
