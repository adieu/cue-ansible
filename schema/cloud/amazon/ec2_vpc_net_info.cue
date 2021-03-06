package ansible

module: ec2_vpc_net_info: {
	module:            "ec2_vpc_net_info"
	short_description: "Gather information about ec2 VPCs in AWS"
	description: [
		"Gather information about ec2 VPCs in AWS",
		"This module was called C(ec2_vpc_net_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.1"
	author:        "Rob White (@wimnat)"
	requirements: [
		"boto3",
		"botocore",
	]
	options: {
		vpc_ids: {
			description: [
				"A list of VPC IDs that exist in your account.",
			]
			version_added: "2.5"
			type:          "list"
			elements:      "str"
		}
		filters: {
			description: [
				"A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpcs.html) for possible filters.",
			]

			type: "dict"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
