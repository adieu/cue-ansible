package ansible

module: aws_caller_info: {
	module:            "aws_caller_info"
	short_description: "Get information about the user and account being used to make AWS calls."
	description: [
		"This module returns information about the account and user / role from which the AWS access tokens originate.",
		"The primary use of this is to get the account id for templating into ARNs or similar to avoid needing to specify this information in inventory.",
		"This module was called C(aws_caller_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.6"

	author: [
		"Ed Costello (@orthanc)",
		"Stijn Dubrul (@sdubrul)",
	]

	requirements: ["botocore", "boto3"]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
