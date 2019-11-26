package ansible

module: aws_secret: {
	module:            "aws_secret"
	short_description: "Manage secrets stored in AWS Secrets Manager."
	description: [
		"Create, update, and delete secrets stored in AWS Secrets Manager.",
	]
	author:        "REY Remi (@rrey)"
	version_added: "2.8"
	requirements: ["botocore>=1.10.0", "boto3"]
	options: {
		name: {
			description: [
				"Friendly name for the secret you are creating.",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"Whether the secret should be exist or not.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		recovery_window: {
			description: [
				"Only used if state is absent.",
				"Specifies the number of days that Secrets Manager waits before it can delete the secret.",
				"If set to 0, the deletion is forced without recovery.",
			]
			default: 30
			type:    "int"
		}
		description: {
			description: [
				"Specifies a user-provided description of the secret.",
			]
			type: "str"
		}
		kms_key_id: {
			description: [
				"Specifies the ARN or alias of the AWS KMS customer master key (CMK) to be used to encrypt the `secret_string` or `secret_binary` values in the versions stored in this secret.",
			]

			type: "str"
		}
		secret_type: {
			description: [
				"Specifies the type of data that you want to encrypt.",
			]
			choices: ["binary", "string"]
			default: "string"
			type:    "str"
		}
		secret: {
			description: [
				"Specifies string or binary data that you want to encrypt and store in the new version of the secret.",
			]
			default: ""
			type:    "str"
		}
		tags: {
			description: [
				"Specifies a list of user-defined tags that are attached to the secret.",
			]
			type: "dict"
		}
		rotation_lambda: {
			description: [
				"Specifies the ARN of the Lambda function that can rotate the secret.",
			]
			type: "str"
		}
		rotation_interval: {
			description: [
				"Specifies the number of days between automatic scheduled rotations of the secret.",
			]
			default: 30
			type:    "int"
		}
	}
	extends_documentation_fragment: [
		"ec2",
		"aws",
	]
}
