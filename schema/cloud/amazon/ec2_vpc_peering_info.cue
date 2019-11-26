package ansible

module: ec2_vpc_peering_info: {
	module:            "ec2_vpc_peering_info"
	short_description: "Retrieves AWS VPC Peering details using AWS methods."
	description: [
		"Gets various details related to AWS VPC Peers",
		"This module was called C(ec2_vpc_peering_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.4"
	requirements: ["boto3"]
	options: {
		peer_connection_ids: {
			description: [
				"List of specific VPC peer IDs to get details for.",
			]
			type:     "list"
			elements: "str"
		}
		filters: {
			description: [
				"A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpcPeeringConnections.html) for possible filters.",
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
