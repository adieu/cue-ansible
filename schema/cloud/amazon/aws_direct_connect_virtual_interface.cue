package ansible

module: aws_direct_connect_virtual_interface: {
	module:            "aws_direct_connect_virtual_interface"
	short_description: "Manage Direct Connect virtual interfaces."
	description: [
		"Create, delete, or modify a Direct Connect public or private virtual interface.",
	]
	version_added: "2.5"
	author:        "Sloane Hertel (@s-hertel)"
	requirements: [
		"boto3",
		"botocore",
	]
	options: {
		state: {
			description: [
				"The desired state of the Direct Connect virtual interface.",
			]
			choices: ["present", "absent"]
			type: "str"
		}
		id_to_associate: {
			description: [
				"The ID of the link aggregation group or connection to associate with the virtual interface.",
			]
			aliases: ["link_aggregation_group_id", "connection_id"]
			type: "str"
		}
		public: {
			description: [
				"The type of virtual interface.",
			]
			type: "bool"
		}
		name: {
			description: [
				"The name of the virtual interface.",
			]
			type: "str"
		}
		vlan: {
			description: [
				"The VLAN ID.",
			]
			default: 100
			type:    "int"
		}
		bgp_asn: {
			description: [
				"The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.",
			]
			default: 65000
			type:    "int"
		}
		authentication_key: {
			description: [
				"The authentication key for BGP configuration.",
			]
			type: "str"
		}
		amazon_address: {
			description: [
				"The amazon address CIDR with which to create the virtual interface.",
			]
			type: "str"
		}
		customer_address: {
			description: [
				"The customer address CIDR with which to create the virtual interface.",
			]
			type: "str"
		}
		address_type: {
			description: [
				"The type of IP address for the BGP peer.",
			]
			type: "str"
		}
		cidr: {
			description: [
				"A list of route filter prefix CIDRs with which to create the public virtual interface.",
			]
			type:     "list"
			elements: "str"
		}
		virtual_gateway_id: {
			description: [
				"The virtual gateway ID required for creating a private virtual interface.",
			]
			type: "str"
		}
		virtual_interface_id: {
			description: [
				"The virtual interface ID.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
