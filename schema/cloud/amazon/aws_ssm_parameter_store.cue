package ansible

module: aws_ssm_parameter_store: {
	module:            "aws_ssm_parameter_store"
	short_description: "Manage key-value pairs in aws parameter store."
	description: [
		"Manage key-value pairs in aws parameter store.",
	]
	version_added: "2.5"
	options: {
		name: {
			description: [
				"Parameter key name.",
			]
			required: true
			type:     "str"
		}
		description: {
			description: [
				"Parameter key description.",
			]
			required: false
			type:     "str"
		}
		value: {
			description: [
				"Parameter value.",
			]
			required: false
			type:     "str"
		}
		state: {
			description: [
				"Creates or modifies an existing parameter.",
				"Deletes a parameter.",
			]
			required: false
			choices: ["present", "absent"]
			default: "present"
			type:    "str"
		}
		string_type: {
			description: [
				"Parameter String type.",
			]
			required: false
			choices: ["String", "StringList", "SecureString"]
			default: "String"
			type:    "str"
		}
		decryption: {
			description: [
				"Work with SecureString type to get plain text secrets",
			]
			type:     "bool"
			required: false
			default:  true
		}
		key_id: {
			description: [
				"AWS KMS key to decrypt the secrets.",
				"The default key (C(alias/aws/ssm)) is automatically generated the first time it's requested.",
			]

			required: false
			default:  "alias/aws/ssm"
			type:     "str"
		}
		overwrite_value: {
			description: [
				"Option to overwrite an existing value if it already exists.",
			]
			required:      false
			version_added: "2.6"
			choices: ["never", "changed", "always"]
			default: "changed"
			type:    "str"
		}
	}
	author: [
		"Nathan Webster (@nathanwebsterdotme)",
		"Bill Wang (@ozbillwang) <ozbillwang@gmail.com>",
		"Michael De La Rue (@mikedlr)",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	requirements: ["botocore", "boto3"]
}
