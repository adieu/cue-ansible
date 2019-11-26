package ansible

module: purefb_subnet: {
	module:            "purefb_subnet"
	version_added:     "2.8"
	short_description: "Manage network subnets in a Pure Storage FlashBlade"
	description: [
		"This module manages network subnets on Pure Storage FlashBlade.",
	]
	author: "Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>"
	options: {
		name: {
			description: [
				"Subnet Name.",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"Create, delete or modifies a subnet.",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
			type: "str"
		}
		gateway: {
			description: [
				"IPv4 or IPv6 address of subnet gateway.",
			]
			required: false
			type:     "str"
		}
		mtu: {
			description: [
				"MTU size of the subnet. Range is 1280 to 9216.",
			]
			required: false
			default:  1500
			type:     "int"
		}
		prefix: {
			description: [
				"IPv4 or IPv6 address associated with the subnet.",
				"Supply the prefix length (CIDR) as well as the IP address.",
			]
			required: false
			type:     "str"
		}
		vlan: {
			description: [
				"VLAN ID of the subnet.",
			]
			required: false
			default:  0
			type:     "int"
		}
	}
	extends_documentation_fragment: [
		"purestorage.fb",
	]
	notes: [
		"Requires the netaddr Python package on the host.",
	]
	requirements: ["netaddr"]
}
