package ansible

module: authorized_key: {
	module:            "authorized_key"
	short_description: "Adds or removes an SSH authorized key"
	description: [
		"Adds or removes SSH authorized keys for particular user accounts.",
	]
	version_added: "0.5"
	options: {
		user: {
			description: [
				"The username on the remote host whose authorized_keys file will be modified.",
			]
			type:     "str"
			required: true
		}
		key: {
			description: [
				"The SSH public key(s), as a string or (since Ansible 1.9) url (https://github.com/username.keys).",
			]
			type:     "str"
			required: true
		}
		path: {
			description: [
				"Alternate path to the authorized_keys file.",
				"When unset, this value defaults to I(~/.ssh/authorized_keys).",
			]
			type:          "path"
			version_added: "1.2"
		}
		manage_dir: {
			description: [
				"Whether this module should manage the directory of the authorized key file.",
				"If set to C(yes), the module will create the directory, as well as set the owner and permissions of an existing directory.",
				"Be sure to set C(manage_dir=no) if you are using an alternate directory for authorized_keys, as set with C(path), since you could lock yourself out of SSH access.",
				"See the example below.",
			]
			type:          "bool"
			default:       true
			version_added: "1.2"
		}
		state: {
			description: [
				"Whether the given key (with the given key_options) should or should not be in the file.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		key_options: {
			description: [
				"A string of ssh key options to be prepended to the key in the authorized_keys file.",
			]
			version_added: "1.4"
		}
		exclusive: {
			description: [
				"Whether to remove all other non-specified keys from the authorized_keys file.",
				"Multiple keys can be specified in a single C(key) string value by separating them by newlines.",
				"This option is not loop aware, so if you use C(with_) , it will be exclusive per iteration of the loop.",
				"If you want multiple keys in the file you need to pass them all to C(key) in a single batch as mentioned above.",
			]
			type:          "bool"
			default:       false
			version_added: "1.9"
		}
		validate_certs: {
			description: [
				"This only applies if using a https url as the source of the keys.",
				"If set to C(no), the SSL certificates will not be validated.",
				"This should only set to C(no) used on personally controlled sites using self-signed certificates as it avoids verifying the source site.",
				"Prior to 2.1 the code worked as if this was set to C(yes).",
			]
			type:          "bool"
			default:       true
			version_added: "2.1"
		}
		comment: {
			description: [
				"Change the comment on the public key.",
				"Rewriting the comment is useful in cases such as fetching it from GitHub or GitLab.",
				"If no comment is specified, the existing comment will be kept.",
			]
			type:          "str"
			version_added: "2.4"
		}
		follow: {
			description: [
				"Follow path symlink instead of replacing it.",
			]
			type:          "bool"
			default:       false
			version_added: "2.7"
		}
	}
	author: "Ansible Core Team"
}
