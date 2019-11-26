package ansible

module: ec2_eip: {
	module:            "ec2_eip"
	short_description: "manages EC2 elastic IP (EIP) addresses."
	description: [
		"This module can allocate or release an EIP.",
		"This module can associate/disassociate an EIP with instances or network interfaces.",
	]
	version_added: "1.4"
	options: {
		device_id: {
			description: [
				"The id of the device for the EIP. Can be an EC2 Instance id or Elastic Network Interface (ENI) id.",
			]
			required: false
			aliases: ["instance_id"]
			version_added: "2.0"
			type:          "str"
		}
		public_ip: {
			description: [
				"The IP address of a previously allocated EIP.",
				"When I(public_ip=present) and device is specified, the EIP is associated with the device.",
				"When I(public_ip=absent) and device is specified, the EIP is disassociated from the device.",
			]
			aliases: ["ip"]
			type: "str"
		}
		state: {
			description: [
				"When C(state=present), allocate an EIP or associate an existing EIP with a device.",
				"When C(state=absent), disassociate the EIP from the device and optionally release it.",
			]
			choices: ["present", "absent"]
			default: "present"
			type:    "str"
		}
		in_vpc: {
			description: [
				"Allocate an EIP inside a VPC or not.",
				"Required if specifying an ENI with I(device_id).",
			]
			default:       false
			type:          "bool"
			version_added: "1.4"
		}
		reuse_existing_ip_allowed: {
			description: [
				"Reuse an EIP that is not associated to a device (when available), instead of allocating a new one.",
			]
			default:       false
			type:          "bool"
			version_added: "1.6"
		}
		release_on_disassociation: {
			description: [
				"Whether or not to automatically release the EIP when it is disassociated.",
			]
			default:       false
			type:          "bool"
			version_added: "2.0"
		}
		private_ip_address: {
			description: [
				"The primary or secondary private IP address to associate with the Elastic IP address.",
			]
			version_added: "2.3"
			type:          "str"
		}
		allow_reassociation: {
			description: [
				"Specify this option to allow an Elastic IP address that is already associated with another network interface or instance to be re-associated with the specified instance or interface.",
			]

			default:       false
			type:          "bool"
			version_added: "2.5"
		}
		tag_name: {
			description: [
				"When I(reuse_existing_ip_allowed=true), supplement with this option to only reuse an Elastic IP if it is tagged with I(tag_name).",
			]

			version_added: "2.9"
			type:          "str"
		}
		tag_value: {
			description: [
				"Supplements I(tag_name) but also checks that the value of the tag provided in I(tag_name) matches I(tag_value).",
			]
			version_added: "2.9"
			type:          "str"
		}
		public_ipv4_pool: {
			description: [
				"Allocates the new Elastic IP from the provided public IPv4 pool (BYOIP) only applies to newly allocated Elastic IPs, isn't validated when I(reuse_existing_ip_allowed=true).",
			]

			version_added: "2.9"
			type:          "str"
		}
		wait_timeout: {
			description: [
				"The I(wait_timeout) option does nothing and will be removed in Ansible 2.14.",
			]
			type: "int"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	author: "Rick Mendes (@rickmendes) <rmendes@illumina.com>"
	notes: [
		"There may be a delay between the time the EIP is assigned and when the cloud instance is reachable via the new address. Use wait_for and pause to delay further playbook execution until the instance is reachable, if necessary.",
		"This module returns multiple changed statuses on disassociation or release. It returns an overall status based on any changes occurring. It also returns individual changed statuses for disassociation and release.",
	]
}
