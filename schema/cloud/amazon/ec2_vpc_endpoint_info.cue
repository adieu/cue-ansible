package ansible

module: ec2_vpc_endpoint_info: {
	module:            "ec2_vpc_endpoint_info"
	short_description: "Retrieves AWS VPC endpoints details using AWS methods."
	description: [
		"Gets various details related to AWS VPC Endpoints.",
		"This module was called C(ec2_vpc_endpoint_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.4"
	requirements: ["boto3"]
	options: {
		query: {
			description: [
				"Specifies the query action to take. Services returns the supported AWS services that can be specified when creating an endpoint.",
			]

			required: true
			choices: [
				"services",
				"endpoints",
			]
			type: "str"
		}
		vpc_endpoint_ids: {
			description: [
				"Get details of specific endpoint IDs",
			]
			type:     "list"
			elements: "str"
		}
		filters: {
			description: [
				"A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpcEndpoints.html) for possible filters.",
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
