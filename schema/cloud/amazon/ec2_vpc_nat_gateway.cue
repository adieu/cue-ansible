package ansible

module: ec2_vpc_nat_gateway: {
	module:            "ec2_vpc_nat_gateway"
	short_description: "Manage AWS VPC NAT Gateways."
	description: [
		"Ensure the state of AWS VPC NAT Gateways based on their id, allocation and subnet ids.",
	]
	version_added: "2.2"
	requirements: ["boto3", "botocore"]
	options: {
		state: {
			description: [
				"Ensure NAT Gateway is present or absent.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		nat_gateway_id: {
			description: [
				"The id AWS dynamically allocates to the NAT Gateway on creation. This is required when the absent option is present.",
			]

			type: "str"
		}
		subnet_id: {
			description: [
				"The id of the subnet to create the NAT Gateway in. This is required with the present option.",
			]

			type: "str"
		}
		allocation_id: {
			description: [
				"The id of the elastic IP allocation. If this is not passed and the eip_address is not passed. An EIP is generated for this NAT Gateway.",
			]

			type: "str"
		}
		eip_address: {
			description: [
				"The elastic IP address of the EIP you want attached to this NAT Gateway. If this is not passed and the allocation_id is not passed, an EIP is generated for this NAT Gateway.",
			]

			type: "str"
		}
		if_exist_do_not_create: {
			description: [
				"if a NAT Gateway exists already in the subnet_id, then do not create a new one.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		release_eip: {
			description: [
				"Deallocate the EIP from the VPC.",
				"Option is only valid with the absent state.",
				"You should use this with the wait option. Since you can not release an address while a delete operation is happening.",
			]
			default: false
			type:    "bool"
		}
		wait: {
			description: [
				"Wait for operation to complete before returning.",
			]
			default: false
			type:    "bool"
		}
		wait_timeout: {
			description: [
				"How many seconds to wait for an operation to complete before timing out.",
			]
			default: 320
			type:    "int"
		}
		client_token: {
			description: [
				"Optional unique token to be used during create to ensure idempotency. When specifying this option, ensure you specify the eip_address parameter as well otherwise any subsequent runs will fail.",
			]

			type: "str"
		}
	}
	author: [
		"Allen Sanabria (@linuxdynasty)",
		"Jon Hadfield (@jonhadfield)",
		"Karen Cheng (@Etherdaemon)",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
