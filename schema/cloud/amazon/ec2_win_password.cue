package ansible

module: ec2_win_password: {
	module:            "ec2_win_password"
	short_description: "Gets the default administrator password for ec2 windows instances"
	description: [
		"Gets the default administrator password from any EC2 Windows instance. The instance is referenced by its id (e.g. C(i-XXXXXXX)).",
		"This module has a dependency on python-boto.",
	]
	version_added: "2.0"
	author:        "Rick Mendes (@rickmendes)"
	options: {
		instance_id: {
			description: [
				"The instance id to get the password data from.",
			]
			required: true
			type:     "str"
		}
		key_file: {
			description: [
				"Path to the file containing the key pair used on the instance.",
				"Conflicts with I(key_data).",
			]
			required: false
			type:     "path"
		}
		key_data: {
			version_added: "2.8"
			description: [
				"The private key (usually stored in vault).",
				"Conflicts with I(key_file),",
			]
			required: false
			type:     "str"
		}
		key_passphrase: {
			version_added: "2.0"
			description: [
				"The passphrase for the instance key pair. The key must use DES or 3DES encryption for this module to decrypt it. You can use openssl to convert your password protected keys if they do not use DES or 3DES. ex) C(openssl rsa -in current_key -out new_key -des3).",
			]

			type: "str"
		}
		wait: {
			version_added: "2.0"
			description: [
				"Whether or not to wait for the password to be available before returning.",
			]
			type:    "bool"
			default: false
		}
		wait_timeout: {
			version_added: "2.0"
			description: [
				"Number of seconds to wait before giving up.",
			]
			default: 120
			type:    "int"
		}
	}

	extends_documentation_fragment: [
		"aws",
		"ec2",
	]

	requirements: [
		"cryptography",
	]

	notes: [
		"As of Ansible 2.4, this module requires the python cryptography module rather than the older pycrypto module.",
	]
}
