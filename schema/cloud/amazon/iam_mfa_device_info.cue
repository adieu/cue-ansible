package ansible

module: iam_mfa_device_info: {
	module:            "iam_mfa_device_info"
	short_description: "List the MFA (Multi-Factor Authentication) devices registered for a user"
	description: [
		"List the MFA (Multi-Factor Authentication) devices registered for a user",
		"This module was called C(iam_mfa_device_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.2"
	author:        "Victor Costan (@pwnall)"
	options: user_name: {
		description: [
			"The name of the user whose MFA devices will be listed",
		]
		type: "str"
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	requirements: [
		"boto3",
		"botocore",
	]
}
