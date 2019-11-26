package ansible

module: ec2_vpc_igw_info: {
	module:            "ec2_vpc_igw_info"
	short_description: "Gather information about internet gateways in AWS"
	description: [
		"Gather information about internet gateways in AWS.",
		"This module was called C(ec2_vpc_igw_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.3"
	requirements: ["boto3"]
	author: "Nick Aslanidis (@naslanidis)"
	options: {
		filters: {
			description: [
				"A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInternetGateways.html) for possible filters.",
			]

			type: "dict"
		}
		internet_gateway_ids: {
			description: [
				"Get details of specific Internet Gateway ID. Provide this value as a list.",
			]
			type:     "list"
			elements: "str"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
