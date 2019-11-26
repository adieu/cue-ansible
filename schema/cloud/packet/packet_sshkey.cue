package ansible

module: packet_sshkey: {
	module:            "packet_sshkey"
	short_description: "Create/delete an SSH key in Packet host."
	description: [
		"Create/delete an SSH key in Packet host.",
		"API is documented at U(https://www.packet.net/help/api/#page:ssh-keys,header:ssh-keys-ssh-keys-post).",
	]
	version_added: "2.3"
	author:        "Tomas Karasek (@t0mk) <tom.to.the.k@gmail.com>"
	options: {
		state: {
			description: [
				"Indicate desired state of the target.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
		auth_token: description: [
			"Packet api token. You can also supply it in env var C(PACKET_API_TOKEN).",
		]
		label: description: [
			"Label for the key. If you keep it empty, it will be read from key string.",
		]
		id: description: [
			"UUID of the key which you want to remove.",
		]
		fingerprint: description: [
			"Fingerprint of the key which you want to remove.",
		]
		key: description: [
			"Public Key string ({type} {base64 encoded key} {description}).",
		]
		key_file: description: [
			"File with the public key.",
		]
	}

	requirements: [
		"python >= 2.6",
		"packet-python",
	]
}
