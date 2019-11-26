package ansible

module: known_hosts: {
	module:            "known_hosts"
	short_description: "Add or remove a host from the C(known_hosts) file"
	description: [
		"The C(known_hosts) module lets you add or remove a host keys from the C(known_hosts) file.",
		"Starting at Ansible 2.2, multiple entries per host are allowed, but only one for each key type supported by ssh. This is useful if you're going to want to use the M(git) module over ssh, for example.",
		"If you have a very large number of host keys to manage, you will find the M(template) module more useful.",
	]
	version_added: "1.9"
	options: {
		name: {
			aliases: ["host"]
			description: [
				"The host to add or remove (must match a host specified in key). It will be converted to lowercase so that ssh-keygen can find it.",
				"Must match with <hostname> or <ip> present in key attribute.",
			]
			required: true
		}
		key: description: [
			"""
		The SSH public host key, as a string (required if state=present, optional when state=absent, in which case all keys for the host are removed). The key must be in the right format for ssh (see sshd(8), section \"SSH_KNOWN_HOSTS FILE FORMAT\").
		Specifically, the key should not match the format that is found in an SSH pubkey file, but should rather have the hostname prepended to a line that includes the pubkey, the same way that it would appear in the known_hosts file. The value prepended to the line must also match the value of the name parameter.
		Should be of format `<hostname[,IP]> ssh-rsa <pubkey>`
		""",
		]

		path: {
			description: [
				"The known_hosts file to edit",
			]
			default: "(homedir)+/.ssh/known_hosts"
		}
		hash_host: {
			description: [
				"Hash the hostname in the known_hosts file",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.3"
		}
		state: {
			description: [
				"I(present) to add the host key, I(absent) to remove it.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
	}
	requirements: []
	author: "Matthew Vernon (@mcv21)"
}
