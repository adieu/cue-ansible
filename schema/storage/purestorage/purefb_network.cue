package ansible

module: purefb_network: {
	module:            "purefb_network"
	version_added:     "2.8"
	short_description: "Manage network interfaces in a Pure Storage FlashBlade"
	description: [
		"This module manages network interfaces on Pure Storage FlashBlade.",
		"When creating a network interface a subnet must already exist with a network prefix that covers the IP address of the interface being created.",
	]

	author: "Pure Storage Ansible Team (@sdodsley) <pure-ansible-team@purestorage.com>"
	options: {
		name: {
			description: [
				"Interface Name.",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"Create, delete or modifies a network interface.",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
			type: "str"
		}
		address: {
			description: [
				"IP address of interface.",
			]
			required: false
			type:     "str"
		}
		services: {
			description: [
				"Define which services are configured for the interfaces.",
			]
			required: false
			choices: ["data"]
			default: "data"
			type:    "str"
		}
		itype: {
			description: [
				"Type of interface.",
			]
			required: false
			choices: ["vip"]
			default: "vip"
			type:    "str"
		}
	}
	extends_documentation_fragment: ["purestorage.fb"]
}
