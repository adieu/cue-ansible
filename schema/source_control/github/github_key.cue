package ansible

module: github_key: {
	module:            "github_key"
	short_description: "Manage GitHub access keys."
	description: [
		"Creates, removes, or updates GitHub access keys.",
	]
	version_added: "2.2"
	options: {
		token: {
			description: [
				"GitHub Access Token with permission to list and create public keys.",
			]
			required: true
		}
		name: {
			description: [
				"SSH key name",
			]
			required: true
		}
		pubkey: description: [
			"SSH public key value. Required when C(state=present).",
		]
		state: {
			description: [
				"Whether to remove a key, ensure that it exists, or update its value.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		force: {
			description: [
				"The default is C(yes), which will replace the existing remote key if it's different than C(pubkey). If C(no), the key will only be set if no key with the given C(name) exists.",
			]

			type:    "bool"
			default: "yes"
		}
	}

	author: "Robert Estelle (@erydo)"
}
