package ansible

module: ec2_vpc_egress_igw: {
	module:            "ec2_vpc_egress_igw"
	short_description: "Manage an AWS VPC Egress Only Internet gateway"
	description: [
		"Manage an AWS VPC Egress Only Internet gateway",
	]
	version_added: "2.5"
	author:        "Daniel Shepherd (@shepdelacreme)"
	options: {
		vpc_id: {
			description: [
				"The VPC ID for the VPC that this Egress Only Internet Gateway should be attached.",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"Create or delete the EIGW.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
