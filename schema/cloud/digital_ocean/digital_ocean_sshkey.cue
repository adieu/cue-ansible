package ansible

module: digital_ocean_sshkey: {
	module:            "digital_ocean_sshkey"
	short_description: "Manage DigitalOcean SSH keys"
	description: [
		"Create/delete DigitalOcean SSH keys.",
	]
	version_added: "2.4"
	author:        "Patrick Marques (@pmarques)"
	options: {
		state: {
			description: [
				"Indicate desired state of the target.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
		fingerprint: {
			description: [
				"This is a unique identifier for the SSH key used to delete a key",
			]
			version_added: 2.4
			aliases: ["id"]
		}
		name: description: [
			"The name for the SSH key",
		]
		ssh_pub_key: description: [
			"The Public SSH key to add.",
		]
		oauth_token: {
			description: [
				"DigitalOcean OAuth token.",
			]
			required:      true
			version_added: 2.4
		}
	}
	notes: [
		"Version 2 of DigitalOcean API is used.",
	]
	requirements: ["python >= 2.6"]
}
