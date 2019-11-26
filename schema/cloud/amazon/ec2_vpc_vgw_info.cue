package ansible

module: ec2_vpc_vgw_info: {
	module:            "ec2_vpc_vgw_info"
	short_description: "Gather information about virtual gateways in AWS"
	description: [
		"Gather information about virtual gateways in AWS.",
		"This module was called C(ec2_vpc_vgw_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.3"
	requirements: ["boto3"]
	options: {
		filters: {
			description: [
				"A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeRouteTables.html) for possible filters.",
			]

			type: "dict"
		}
		vpn_gateway_ids: {
			description: [
				"Get details of a specific Virtual Gateway ID. This value should be provided as a list.",
			]
			type:     "list"
			elements: "str"
		}
	}
	author: "Nick Aslanidis (@naslanidis)"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
