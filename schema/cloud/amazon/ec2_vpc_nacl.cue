package ansible

module: ec2_vpc_nacl: {
	module:            "ec2_vpc_nacl"
	short_description: "create and delete Network ACLs."
	description: [
		"Read the AWS documentation for Network ACLS U(https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html)",
	]

	version_added: "2.2"
	options: {
		name: {
			description: [
				"Tagged name identifying a network ACL.",
				"One and only one of the I(name) or I(nacl_id) is required.",
			]
			required: false
			type:     "str"
		}
		nacl_id: {
			description: [
				"NACL id identifying a network ACL.",
				"One and only one of the I(name) or I(nacl_id) is required.",
			]
			required:      false
			version_added: "2.4"
			type:          "str"
		}
		vpc_id: {
			description: [
				"VPC id of the requesting VPC.",
				"Required when state present.",
			]
			required: false
			type:     "str"
		}
		subnets: {
			description: [
				"The list of subnets that should be associated with the network ACL.",
				"Must be specified as a list",
				"Each subnet can be specified as subnet ID, or its tagged name.",
			]
			required: false
			type:     "list"
		}
		egress: {
			description: [
				"A list of rules for outgoing traffic. Each rule must be specified as a list. Each rule may contain the rule number (integer 1-32766), protocol (one of ['tcp', 'udp', 'icmp', '-1', 'all']), the rule action ('allow' or 'deny') the CIDR of the IPv4 network range to allow or deny, the ICMP type (-1 means all types), the ICMP code (-1 means all codes), the last port in the range for TCP or UDP protocols, and the first port in the range for TCP or UDP protocols. See examples.",
			]

			default: []
			required: false
			type:     "list"
		}
		ingress: {
			description: [
				"List of rules for incoming traffic. Each rule must be specified as a list. Each rule may contain the rule number (integer 1-32766), protocol (one of ['tcp', 'udp', 'icmp', '-1', 'all']), the rule action ('allow' or 'deny') the CIDR of the IPv4 network range to allow or deny, the ICMP type (-1 means all types), the ICMP code (-1 means all codes), the last port in the range for TCP or UDP protocols, and the first port in the range for TCP or UDP protocols. See examples.",
			]

			default: []
			required: false
			type:     "list"
		}
		tags: {
			description: [
				"Dictionary of tags to look for and apply when creating a network ACL.",
			]
			required: false
			type:     "dict"
		}
		state: {
			description: [
				"Creates or modifies an existing NACL",
				"Deletes a NACL and reassociates subnets to the default NACL",
			]
			required: false
			type:     "str"
			choices: ["present", "absent"]
			default: "present"
		}
	}
	author: "Mike Mochan (@mmochan)"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	requirements: ["botocore", "boto3", "json"]
}
