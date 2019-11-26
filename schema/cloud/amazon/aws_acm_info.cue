package ansible

module: aws_acm_info: {
	module:            "aws_acm_info"
	short_description: "Retrieve certificate information from AWS Certificate Manager service"
	description: [
		"Retrieve information for ACM certificates",
		"This module was called C(aws_acm_facts) before Ansible 2.9. The usage did not change.",
		"Note that this will not return information about uploaded keys of size 4096 bits, due to a limitation of the ACM API.",
	]
	version_added: "2.5"
	options: {
		certificate_arn: {
			description: [
				"If provided, the results will be filtered to show only the certificate with this ARN.",
				"If no certificate with this ARN exists, this task will fail.",
				"If a certificate with this ARN exists in a different region, this task will fail",
			]
			aliases: [
				"arn",
			]
			version_added: "2.10"
			type:          "str"
		}
		domain_name: {
			description: [
				"The domain name of an ACM certificate to limit the search to",
			]
			aliases: [
				"name",
			]
			type: "str"
		}
		statuses: {
			description: [
				"Status to filter the certificate results",
			]
			choices: ["PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED", "FAILED"]
			type:     "list"
			elements: "str"
		}
		tags: {
			description: [
				"Filter results to show only certificates with tags that match all the tags specified here.",
			]
			type:          "dict"
			version_added: "2.10"
		}
	}
	requirements: [
		"boto3",
	]
	author: [
		"Will Thames (@willthames)",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
