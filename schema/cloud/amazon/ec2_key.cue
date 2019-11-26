package ansible

module: ec2_key: {
	module:            "ec2_key"
	version_added:     "1.5"
	short_description: "create or delete an ec2 key pair"
	description: [
		"create or delete an ec2 key pair.",
	]
	options: {
		name: {
			description: [
				"Name of the key pair.",
			]
			required: true
			type:     "str"
		}
		key_material: {
			description: [
				"Public key material.",
			]
			required: false
			type:     "str"
		}
		force: {
			description: [
				"Force overwrite of already existing key pair if key has changed.",
			]
			required:      false
			default:       true
			type:          "bool"
			version_added: "2.3"
		}
		state: {
			description: [
				"create or delete keypair",
			]
			required: false
			choices: ["present", "absent"]
			default: "present"
			type:    "str"
		}
		wait: {
			description: [
				"This option has no effect since version 2.5 and will be removed in 2.14.",
			]
			version_added: "1.6"
			type:          "bool"
		}
		wait_timeout: {
			description: [
				"This option has no effect since version 2.5 and will be removed in 2.14.",
			]
			version_added: "1.6"
			type:          "int"
			required:      false
		}
	}

	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	requirements: ["boto3"]
	author: [
		"Vincent Viallet (@zbal)",
		"Prasad Katti (@prasadkatti)",
	]
}
