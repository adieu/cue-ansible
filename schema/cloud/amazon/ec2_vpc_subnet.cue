package ansible

module: ec2_vpc_subnet: {
	module:            "ec2_vpc_subnet"
	short_description: "Manage subnets in AWS virtual private clouds"
	description: [
		"Manage subnets in AWS virtual private clouds",
	]
	version_added: "2.0"
	author: [
		"Robert Estelle (@erydo)",
		"Brad Davidson (@brandond)",
	]
	requirements: ["boto3"]
	options: {
		az: {
			description: [
				"The availability zone for the subnet.",
			]
			type: "str"
		}
		cidr: {
			description: [
				"The CIDR block for the subnet. E.g. 192.0.2.0/24.",
			]
			type: "str"
		}
		ipv6_cidr: {
			description: [
				"The IPv6 CIDR block for the subnet. The VPC must have a /56 block assigned and this value must be a valid IPv6 /64 that falls in the VPC range.",
				"Required if I(assign_instances_ipv6=true)",
			]
			version_added: "2.5"
			type:          "str"
		}
		tags: {
			description: [
				"A dict of tags to apply to the subnet. Any tags currently applied to the subnet and not present here will be removed.",
			]
			aliases: ["resource_tags"]
			type: "dict"
		}
		state: {
			description: [
				"Create or remove the subnet",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		vpc_id: {
			description: [
				"VPC ID of the VPC in which to create or delete the subnet.",
			]
			required: true
			type:     "str"
		}
		map_public: {
			description: [
				"Specify C(yes) to indicate that instances launched into the subnet should be assigned public IP address by default.",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.4"
		}
		assign_instances_ipv6: {
			description: [
				"Specify C(yes) to indicate that instances launched into the subnet should be automatically assigned an IPv6 address.",
			]
			type:          "bool"
			default:       false
			version_added: "2.5"
		}
		wait: {
			description: [
				"When specified,I(state=present) module will wait for subnet to be in available state before continuing.",
			]
			type:          "bool"
			default:       true
			version_added: "2.5"
		}
		wait_timeout: {
			description: [
				"Number of seconds to wait for subnet to become available I(wait=True).",
			]
			default:       300
			version_added: "2.5"
			type:          "int"
		}
		purge_tags: {
			description: [
				"Whether or not to remove tags that do not appear in the I(tags) list.",
			]
			type:          "bool"
			default:       true
			version_added: "2.5"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
