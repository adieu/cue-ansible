package ansible

module: aws_s3_bucket_info: {
	module:            "aws_s3_bucket_info"
	short_description: "Lists S3 buckets in AWS"
	requirements: [
		"boto3 >= 1.4.4",
		"python >= 2.6",
	]
	description: [
		"Lists S3 buckets in AWS",
		"This module was called C(aws_s3_bucket_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(aws_s3_bucket_info) module no longer returns C(ansible_facts)!",
	]

	version_added: "2.4"
	author:        "Gerben Geijteman (@hyperized)"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
