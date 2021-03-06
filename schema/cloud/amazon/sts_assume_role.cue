package ansible

module: sts_assume_role: {
	module:            "sts_assume_role"
	short_description: "Assume a role using AWS Security Token Service and obtain temporary credentials"
	description: [
		"Assume a role using AWS Security Token Service and obtain temporary credentials.",
	]
	version_added: "2.0"
	author: [
		"Boris Ekelchik (@bekelchik)",
		"Marek Piatek (@piontas)",
	]
	options: {
		role_arn: {
			description: [
				"The Amazon Resource Name (ARN) of the role that the caller is assuming U(https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html#Identifiers_ARNs).",
			]

			required: true
			type:     "str"
		}
		role_session_name: {
			description: [
				"Name of the role's session - will be used by CloudTrail.",
			]
			required: true
			type:     "str"
		}
		policy: {
			description: [
				"Supplemental policy to use in addition to assumed role's policies.",
			]
			type: "str"
		}
		duration_seconds: {
			description: [
				"The duration, in seconds, of the role session. The value can range from 900 seconds (15 minutes) to 43200 seconds (12 hours).",
				"The max depends on the IAM role's sessions duration setting.",
				"By default, the value is set to 3600 seconds.",
			]
			type: "int"
		}
		external_id: {
			description: [
				"A unique identifier that is used by third parties to assume a role in their customers' accounts.",
			]
			type: "str"
		}
		mfa_serial_number: {
			description: [
				"The identification number of the MFA device that is associated with the user who is making the AssumeRole call.",
			]
			type: "str"
		}
		mfa_token: {
			description: [
				"The value provided by the MFA device, if the trust policy of the role being assumed requires MFA.",
			]
			type: "str"
		}
	}
	notes: [
		"In order to use the assumed role in a following playbook task you must pass the access_key, access_secret and access_token.",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	requirements: [
		"boto3",
		"botocore",
		"python >= 2.6",
	]
}
