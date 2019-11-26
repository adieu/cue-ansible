package ansible

module: ec2_vpc_nat_gateway_info: {
	module:            "ec2_vpc_nat_gateway_info"
	short_description: "Retrieves AWS VPC Managed Nat Gateway details using AWS methods."
	description: [
		"Gets various details related to AWS VPC Managed Nat Gateways",
		"This module was called C(ec2_vpc_nat_gateway_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.3"
	requirements: ["boto3"]
	options: {
		nat_gateway_ids: {
			description: [
				"List of specific nat gateway IDs to fetch details for.",
			]
			type:     "list"
			elements: "str"
		}
		filters: {
			description: [
				"A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNatGateways.html) for possible filters.",
			]

			type: "dict"
		}
	}
	author: "Karen Cheng (@Etherdaemon)"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
