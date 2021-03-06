package ansible

module: apt_key: {
	module: "apt_key"
	author: [
		"Jayson Vantuyl (@jvantuyl)",
	]
	version_added:     "1.0"
	short_description: "Add or remove an apt key"
	description: [
		"Add or remove an I(apt) key, optionally downloading it.",
	]
	notes: [
		"Doesn't download the key unless it really needs it.",
		"As a sanity check, downloaded key id must match the one specified.",
		"Use full fingerprint (40 characters) key ids to avoid key collisions. To generate a full-fingerprint imported key: C(apt-key adv --list-public-keys --with-fingerprint --with-colons).",
		"If you specify both the key id and the URL with C(state=present), the task can verify or add the key as needed.",
		"Adding a new key requires an apt cache update (e.g. using the apt module's update_cache option)",
	]
	requirements: [
		"gpg",
	]
	options: {
		id: description: [
			"The identifier of the key.",
			"Including this allows check mode to correctly report the changed state.",
			"If specifying a subkey's id be aware that apt-key does not understand how to remove keys via a subkey id.  Specify the primary key's id instead.",
			"This parameter is required when C(state) is set to C(absent).",
		]
		data: description: [
			"The keyfile contents to add to the keyring.",
		]
		file: description: [
			"The path to a keyfile on the remote server to add to the keyring.",
		]
		keyring: {
			description: [
				"The full path to specific keyring file in /etc/apt/trusted.gpg.d/",
			]
			version_added: "1.3"
		}
		url: description: [
			"The URL to retrieve key from.",
		]
		keyserver: {
			description: [
				"The keyserver to retrieve key from.",
			]
			version_added: "1.6"
		}
		state: {
			description: [
				"Ensures that the key is present (added) or absent (revoked).",
			]
			choices: ["absent", "present"]
			default: "present"
		}
		validate_certs: {
			description: [
				"If C(no), SSL certificates for the target url will not be validated. This should only be used on personally controlled sites using self-signed certificates.",
			]

			type:    "bool"
			default: "yes"
		}
	}
}
