package ansible

module: ec2_eni: {
	module:            "ec2_eni"
	short_description: "Create and optionally attach an Elastic Network Interface (ENI) to an instance"
	description: [
		"Create and optionally attach an Elastic Network Interface (ENI) to an instance. If an ENI ID or private_ip is provided, the existing ENI (if any) will be modified. The 'attached' parameter controls the attachment status of the network interface.",
	]

	version_added: "2.0"
	author:        "Rob White (@wimnat)"
	options: {
		eni_id: {
			description: [
				"The ID of the ENI (to modify).",
				"If I(eni_id=None) and I(state=present), a new eni will be created.",
			]
			type: "str"
		}
		instance_id: {
			description: [
				"Instance ID that you wish to attach ENI to.",
				"Since version 2.2, use the I(attached) parameter to attach or detach an ENI. Prior to 2.2, to detach an ENI from an instance, use C(None).",
			]
			type: "str"
		}
		private_ip_address: {
			description: [
				"Private IP address.",
			]
			type: "str"
		}
		subnet_id: {
			description: [
				"ID of subnet in which to create the ENI.",
			]
			type: "str"
		}
		description: {
			description: [
				"Optional description of the ENI.",
			]
			type: "str"
		}
		security_groups: {
			description: [
				"List of security groups associated with the interface. Only used when I(state=present).",
				"Since version 2.2, you can specify security groups by ID or by name or a combination of both. Prior to 2.2, you can specify only by ID.",
			]
			type:     "list"
			elements: "str"
		}
		state: {
			description: [
				"Create or delete ENI.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		device_index: {
			description: [
				"The index of the device for the network interface attachment on the instance.",
			]
			default: 0
			type:    "int"
		}
		attached: {
			description: [
				"Specifies if network interface should be attached or detached from instance. If omitted, attachment status won't change",
			]

			version_added: 2.2
			type:          "bool"
		}
		force_detach: {
			description: [
				"Force detachment of the interface. This applies either when explicitly detaching the interface by setting I(instance_id=None) or when deleting an interface with I(state=absent).",
			]

			default: false
			type:    "bool"
		}
		delete_on_termination: {
			description: [
				"Delete the interface when the instance it is attached to is terminated. You can only specify this flag when the interface is being modified, not on creation.",
			]

			required: false
			type:     "bool"
		}
		source_dest_check: {
			description: [
				"By default, interfaces perform source/destination checks. NAT instances however need this check to be disabled. You can only specify this flag when the interface is being modified, not on creation.",
			]

			required: false
			type:     "bool"
		}
		secondary_private_ip_addresses: {
			description: [
				"A list of IP addresses to assign as secondary IP addresses to the network interface. This option is mutually exclusive of I(secondary_private_ip_address_count)",
			]

			required:      false
			version_added: 2.2
			type:          "list"
			elements:      "str"
		}
		purge_secondary_private_ip_addresses: {
			description: [
				"To be used with I(secondary_private_ip_addresses) to determine whether or not to remove any secondary IP addresses other than those specified.",
				"Set I(secondary_private_ip_addresses=[]) to purge all secondary addresses.",
			]
			default:       false
			type:          "bool"
			version_added: 2.5
		}
		secondary_private_ip_address_count: {
			description: [
				"The number of secondary IP addresses to assign to the network interface. This option is mutually exclusive of I(secondary_private_ip_addresses)",
			]
			required:      false
			version_added: 2.2
			type:          "int"
		}
		allow_reassignment: {
			description: [
				"Indicates whether to allow an IP address that is already assigned to another network interface or instance to be reassigned to the specified network interface.",
			]

			required:      false
			default:       false
			type:          "bool"
			version_added: 2.7
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	notes: [
		"This module identifies and ENI based on either the I(eni_id), a combination of I(private_ip_address) and I(subnet_id), or a combination of I(instance_id) and I(device_id). Any of these options will let you specify a particular ENI.",
	]
}
