package ansible

module: ec2_customer_gateway_info: {
	module:            "ec2_customer_gateway_info"
	short_description: "Gather information about customer gateways in AWS"
	description: [
		"Gather information about customer gateways in AWS.",
		"This module was called C(ec2_customer_gateway_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.5"
	requirements: ["boto3"]
	author: "Madhura Naniwadekar (@Madhura-CSI)"
	options: {
		filters: {
			description: [
				"A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeCustomerGateways.html) for possible filters.",
			]

			type: "dict"
		}
		customer_gateway_ids: {
			description: [
				"Get details of a specific customer gateways using customer gateway ID/IDs. This value should be provided as a list.",
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
