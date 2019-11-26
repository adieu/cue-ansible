package ansible

module: ec2_vpc_net: {
	module:            "ec2_vpc_net"
	short_description: "Configure AWS virtual private clouds"
	description: [
		"Create, modify, and terminate AWS virtual private clouds.",
	]
	version_added: "2.0"
	author: [
		"Jonathan Davila (@defionscode)",
		"Sloane Hertel (@s-hertel)",
	]
	options: {
		name: {
			description: [
				"The name to give your VPC. This is used in combination with C(cidr_block) to determine if a VPC already exists.",
			]
			required: true
			type:     "str"
		}
		cidr_block: {
			description: [
				"The primary CIDR of the VPC. After 2.5 a list of CIDRs can be provided. The first in the list will be used as the primary CIDR and is used in conjunction with the C(name) to ensure idempotence.",
			]

			required: true
			type:     "list"
			elements: "str"
		}
		ipv6_cidr: {
			description: [
				"Request an Amazon-provided IPv6 CIDR block with /56 prefix length.  You cannot specify the range of IPv6 addresses, or the size of the CIDR block.",
			]

			default:       false
			type:          "bool"
			version_added: "2.10"
		}
		purge_cidrs: {
			description: [
				"Remove CIDRs that are associated with the VPC and are not specified in C(cidr_block).",
			]
			default:       false
			type:          "bool"
			version_added: "2.5"
		}
		tenancy: {
			description: [
				"Whether to be default or dedicated tenancy. This cannot be changed after the VPC has been created.",
			]
			default: "default"
			choices: ["default", "dedicated"]
			type: "str"
		}
		dns_support: {
			description: [
				"Whether to enable AWS DNS support.",
			]
			default: true
			type:    "bool"
		}
		dns_hostnames: {
			description: [
				"Whether to enable AWS hostname support.",
			]
			default: true
			type:    "bool"
		}
		dhcp_opts_id: {
			description: [
				"The id of the DHCP options to use for this VPC.",
			]
			type: "str"
		}
		tags: {
			description: [
				"The tags you want attached to the VPC. This is independent of the name value, note if you pass a 'Name' key it would override the Name of the VPC if it's different.",
			]

			aliases: ["resource_tags"]
			type: "dict"
		}
		state: {
			description: [
				"The state of the VPC. Either absent or present.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		multi_ok: {
			description: [
				"By default the module will not create another VPC if there is another VPC with the same name and CIDR block. Specify this as true if you want duplicate VPCs created.",
			]

			type:    "bool"
			default: false
		}
	}
	requirements: [
		"boto3",
		"botocore",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
