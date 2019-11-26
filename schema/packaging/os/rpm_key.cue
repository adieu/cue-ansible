package ansible

module: rpm_key: {
	module: "rpm_key"
	author: [
		"Hector Acosta (@hacosta) <hector.acosta@gazzang.com>",
	]
	short_description: "Adds or removes a gpg key from the rpm db"
	description: [
		"Adds or removes (rpm --import) a gpg key to your rpm database.",
	]
	version_added: "1.3"
	options: {
		key: {
			description: [
				"Key that will be modified. Can be a url, a file on the managed node, or a keyid if the key already exists in the database.",
			]

			required: true
		}
		state: {
			description: [
				"If the key will be imported or removed from the rpm db.",
			]
			default: "present"
			choices: ["absent", "present"]
		}
		validate_certs: {
			description: [
				"If C(no) and the C(key) is a url starting with https, SSL certificates will not be validated.",
				"This should only be used on personally controlled sites using self-signed certificates.",
			]
			type:    "bool"
			default: "yes"
		}
		fingerprint: {
			description: [
				"The long-form fingerprint of the key being imported.",
				"This will be used to verify the specified key.",
			]
			type:          "str"
			version_added: 2.9
		}
	}
}
