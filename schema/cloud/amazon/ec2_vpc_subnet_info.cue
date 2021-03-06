package ansible

module: ec2_vpc_subnet_info: {
	module:            "ec2_vpc_subnet_info"
	short_description: "Gather information about ec2 VPC subnets in AWS"
	description: [
		"Gather information about ec2 VPC subnets in AWS",
		"This module was called C(ec2_vpc_subnet_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.1"
	author:        "Rob White (@wimnat)"
	requirements: [
		"boto3",
		"botocore",
	]
	options: {
		subnet_ids: {
			description: [
				"A list of subnet IDs to gather information for.",
			]
			version_added: "2.5"
			aliases: ["subnet_id"]
			type:     "list"
			elements: "str"
		}
		filters: {
			description: [
				"A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSubnets.html) for possible filters.",
			]

			type: "dict"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
