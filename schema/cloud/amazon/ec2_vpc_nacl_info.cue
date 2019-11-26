package ansible

module: ec2_vpc_nacl_info: {
	module:            "ec2_vpc_nacl_info"
	short_description: "Gather information about Network ACLs in an AWS VPC"
	description: [
		"Gather information about Network ACLs in an AWS VPC",
		"This module was called C(ec2_vpc_nacl_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.2"
	author:        "Brad Davidson (@brandond)"
	requirements: ["boto3"]
	options: {
		nacl_ids: {
			description: [
				"A list of Network ACL IDs to retrieve information about.",
			]
			required: false
			default: []
			aliases: ["nacl_id"]
			type: "list"
		}
		filters: {
			description: [
				"A dict of filters to apply. Each dict item consists of a filter key and a filter value. See       U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeNetworkAcls.html) for possible filters. Filter       names and values are case sensitive.",
			]
			required: false
			default: {}
			type: "dict"
		}
	}
	notes: [
		"By default, the module will return all Network ACLs.",
	]

	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
