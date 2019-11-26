package ansible

module: azure_rm_virtualnetwork: {
	module:            "azure_rm_virtualnetwork"
	version_added:     "2.1"
	short_description: "Manage Azure virtual networks"
	description: [
		"Create, update or delete a virtual networks. Allows setting and updating the available IPv4 address ranges and setting custom DNS servers. Use the M(azure_rm_subnet) module to associate subnets with a virtual network.",
	]

	options: {
		resource_group: {
			description: [
				"Name of resource group.",
			]
			required: true
		}
		address_prefixes_cidr: {
			description: [
				"List of IPv4 address ranges where each is formatted using CIDR notation.",
				"Required when creating a new virtual network or using I(purge_address_prefixes).",
			]
			aliases: [
				"address_prefixes",
			]
		}
		dns_servers: description: [
			"Custom list of DNS servers. Maximum length of two.",
			"The first server in the list will be treated as the Primary server. This is an explicit list.",
			"Existing DNS servers will be replaced with the specified list.",
			"Use the I(purge_dns_servers) option to remove all custom DNS servers and revert to default Azure servers.",
		]
		location: description: [
			"Valid Azure location. Defaults to location of the resource group.",
		]
		name: {
			description: [
				"Name of the virtual network.",
			]
			required: true
		}
		purge_address_prefixes: {
			description: [
				"Use with I(state=present) to remove any existing I(address_prefixes).",
			]
			type:    "bool"
			default: "no"
			aliases: [
				"purge",
			]
		}
		purge_dns_servers: {
			description: [
				"Use with I(state=present) to remove existing DNS servers, reverting to default Azure servers. Mutually exclusive with DNS servers.",
			]
			type:    "bool"
			default: "no"
		}
		state: {
			description: [
				"State of the virtual network. Use C(present) to create or update and C(absent) to delete.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
	}

	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Chris Houseknecht (@chouseknecht)",
		"Matt Davis (@nitzmahone)",
	]
}
