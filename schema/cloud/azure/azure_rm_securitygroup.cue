package ansible

module: azure_rm_securitygroup: {
	module:            "azure_rm_securitygroup"
	version_added:     "2.1"
	short_description: "Manage Azure network security groups"
	description: [
		"Create, update or delete a network security group.",
		"A security group contains Access Control List (ACL) rules that allow or deny network traffic to subnets or individual network interfaces.",
		"A security group is created with a set of default security rules and an empty set of security rules.",
		"Shape traffic flow by adding rules to the empty set of security rules.",
	]

	options: {
		default_rules: description: [
			"The set of default rules automatically added to a security group at creation.",
			"In general default rules will not be modified. Modify rules to shape the flow of traffic to or from a subnet or NIC.",
			"See rules below for the makeup of a rule dict.",
		]
		location: description: [
			"Valid azure location. Defaults to location of the resource group.",
		]
		name: description: [
			"Name of the security group to operate on.",
		]
		purge_default_rules: {
			description: [
				"Remove any existing rules not matching those defined in the default_rules parameter.",
			]
			type:    "bool"
			default: "no"
		}
		purge_rules: {
			description: [
				"Remove any existing rules not matching those defined in the rules parameters.",
			]
			type:    "bool"
			default: "no"
		}
		resource_group: {
			description: [
				"Name of the resource group the security group belongs to.",
			]
			required: true
		}
		rules: {
			description: [
				"Set of rules shaping traffic flow to or from a subnet or NIC. Each rule is a dictionary.",
			]
			suboptions: {
				name: {
					description: [
						"Unique name for the rule.",
					]
					required: true
				}
				description: description: [
					"Short description of the rule's purpose.",
				]
				protocol: {
					description: [
						"Accepted traffic protocol.",
					]
					choices: [
						"Udp",
						"Tcp",
						"*",
					]
					default: "*"
				}
				source_port_range: {
					description: [
						"Port or range of ports from which traffic originates.",
						"It can accept string type or a list of string type.",
					]
					default: "*"
				}
				destination_port_range: {
					description: [
						"Port or range of ports to which traffic is headed.",
						"It can accept string type or a list of string type.",
					]
					default: "*"
				}
				source_address_prefix: {
					description: [
						"The CIDR or source IP range.",
						"Asterisk C(*) can also be used to match all source IPs.",
						"Default tags such as C(VirtualNetwork), C(AzureLoadBalancer) and C(Internet) can also be used.",
						"If this is an ingress rule, specifies where network traffic originates from.",
						"It can accept string type or a list of string type.",
					]
					default: "*"
				}
				destination_address_prefix: {
					description: [
						"The destination address prefix.",
						"CIDR or destination IP range.",
						"Asterisk C(*) can also be used to match all source IPs.",
						"Default tags such as C(VirtualNetwork), C(AzureLoadBalancer) and C(Internet) can also be used.",
						"It can accept string type or a list of string type.",
					]
					default: "*"
				}
				source_application_security_groups: {
					description: [
						"List of the source application security groups.",
						"It could be list of resource id.",
						"It could be list of names in same resource group.",
						"It could be list of dict containing resource_group and name.",
						"It is mutually exclusive with C(source_address_prefix) and C(source_address_prefixes).",
					]
					type: "list"
				}
				destination_application_security_groups: {
					description: [
						"List of the destination application security groups.",
						"It could be list of resource id.",
						"It could be list of names in same resource group.",
						"It could be list of dict containing I(resource_group) and I(name).",
						"It is mutually exclusive with C(destination_address_prefix) and C(destination_address_prefixes).",
					]
					type: "list"
				}
				access: {
					description: [
						"Whether or not to allow the traffic flow.",
					]
					choices: [
						"Allow",
						"Deny",
					]
					default: "Allow"
				}
				priority: {
					description: [
						"Order in which to apply the rule. Must a unique integer between 100 and 4096 inclusive.",
					]
					required: true
				}
				direction: {
					description: [
						"Indicates the direction of the traffic flow.",
					]
					choices: [
						"Inbound",
						"Outbound",
					]
					default: "Inbound"
				}
			}
		}
		state: {
			description: [
				"Assert the state of the security group. Set to C(present) to create or update a security group. Set to C(absent) to remove a security group.",
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
