package ansible

module: hcloud_ssh_key: {
	module: "hcloud_ssh_key"

	short_description: "Create and manage ssh keys on the Hetzner Cloud."

	version_added: "2.8"

	description: [
		"Create, update and manage ssh keys on the Hetzner Cloud.",
	]

	author: [
		"Lukas Kaemmerling (@LKaemmerling)",
	]

	options: {
		id: {
			description: [
				"The ID of the Hetzner Cloud ssh_key to manage.",
				"Only required if no ssh_key I(name) is given",
			]
			type: "int"
		}
		name: {
			description: [
				"The Name of the Hetzner Cloud ssh_key to manage.",
				"Only required if no ssh_key I(id) is given or a ssh_key does not exists.",
			]
			type: "str"
		}
		fingerprint: {
			description: [
				"The Fingerprint of the Hetzner Cloud ssh_key to manage.",
				"Only required if no ssh_key I(id) or I(name) is given.",
			]
			type: "str"
		}
		labels: {
			description: [
				"User-defined labels (key-value pairs)",
			]
			type: "dict"
		}
		public_key: {
			description: [
				"The Public Key to add.",
				"Required if ssh_key does not exists.",
			]
			type: "str"
		}
		state: {
			description: [
				"State of the ssh_key.",
			]
			default: "present"
			choices: ["absent", "present"]
			type: "str"
		}
	}
	extends_documentation_fragment: "hcloud"
}
