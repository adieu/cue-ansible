package ansible

module: azure_rm_subnet: {
	module:            "azure_rm_subnet"
	version_added:     "2.1"
	short_description: "Manage Azure subnets"
	description: [
		"Create, update or delete a subnet within a given virtual network.",
		"Allows setting and updating the address prefix CIDR, which must be valid within the context of the virtual network.",
		"Use the M(azure_rm_networkinterface) module to associate interfaces with the subnet and assign specific IP addresses.",
	]
	options: {
		resource_group: {
			description: [
				"Name of resource group.",
			]
			required: true
		}
		name: {
			description: [
				"Name of the subnet.",
			]
			required: true
		}
		address_prefix_cidr: {
			description: [
				"CIDR defining the IPv4 address space of the subnet. Must be valid within the context of the virtual network.",
			]
			aliases: [
				"address_prefix",
			]
		}
		security_group: {
			description: [
				"Existing security group with which to associate the subnet.",
				"It can be the security group name which is in the same resource group.",
				"Can be the resource ID of the security group.",
				"Can be a dict containing the I(name) and I(resource_group) of the security group.",
			]
			aliases: [
				"security_group_name",
			]
		}
		state: {
			description: [
				"Assert the state of the subnet. Use C(present) to create or update a subnet and use C(absent) to delete a subnet.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
		virtual_network_name: {
			description: [
				"Name of an existing virtual network with which the subnet is or will be associated.",
			]
			required: true
			aliases: [
				"virtual_network",
			]
		}
		route_table: {
			description: [
				"The reference of the RouteTable resource.",
				"Can be the name or resource ID of the route table.",
				"Can be a dict containing the I(name) and I(resource_group) of the route table.",
			]
			version_added: "2.7"
		}
		service_endpoints: {
			description: [
				"An array of service endpoints.",
			]
			type: "list"
			suboptions: {
				service: {
					description: [
						"The type of the endpoint service.",
					]
					required: true
				}
				locations: {
					description: [
						"A list of locations.",
					]
					type: "list"
				}
			}
			version_added: "2.8"
		}
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Chris Houseknecht (@chouseknecht)",
		"Matt Davis (@nitzmahone)",
	]
}
