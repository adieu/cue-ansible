package ansible

module: ec2_vpc_dhcp_option: {
	module:            "ec2_vpc_dhcp_option"
	short_description: "Manages DHCP Options, and can ensure the DHCP options for the given VPC match what's requested"

	description: [
		"This module removes, or creates DHCP option sets, and can associate them to a VPC. Optionally, a new DHCP Options set can be created that converges a VPC's existing DHCP option set with values provided. When dhcp_options_id is provided, the module will 1. remove (with state='absent') 2. ensure tags are applied (if state='present' and tags are provided 3. attach it to a VPC (if state='present' and a vpc_id is provided. If any of the optional values are missing, they will either be treated as a no-op (i.e., inherit what already exists for the VPC) To remove existing options while inheriting, supply an empty value (e.g. set ntp_servers to [] if you want to remove them from the VPC's options) Most of the options should be self-explanatory.",
	]

	author:        "Joel Thompson (@joelthompson)"
	version_added: 2.1
	options: {
		domain_name: {
			description: [
				"The domain name to set in the DHCP option sets",
			]
			type: "str"
		}
		dns_servers: {
			description: [
				"A list of hosts to set the DNS servers for the VPC to. (Should be a list of IP addresses rather than host names.)",
			]

			type:     "list"
			elements: "str"
		}
		ntp_servers: {
			description: [
				"List of hosts to advertise as NTP servers for the VPC.",
			]
			type:     "list"
			elements: "str"
		}
		netbios_name_servers: {
			description: [
				"List of hosts to advertise as NetBIOS servers.",
			]
			type:     "list"
			elements: "str"
		}
		netbios_node_type: {
			description: [
				"NetBIOS node type to advertise in the DHCP options. The AWS recommendation is to use 2 (when using netbios name services) U(https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html)",
			]

			type: "int"
		}
		vpc_id: {
			description: [
				"VPC ID to associate with the requested DHCP option set. If no vpc id is provided, and no matching option set is found then a new DHCP option set is created.",
			]

			type: "str"
		}
		delete_old: {
			description: [
				"Whether to delete the old VPC DHCP option set when associating a new one. This is primarily useful for debugging/development purposes when you want to quickly roll back to the old option set. Note that this setting will be ignored, and the old DHCP option set will be preserved, if it is in use by any other VPC. (Otherwise, AWS will return an error.)",
			]

			type:    "bool"
			default: "yes"
		}
		inherit_existing: {
			description: [
				"For any DHCP options not specified in these parameters, whether to inherit them from the options set already applied to vpc_id, or to reset them to be empty.",
			]

			type:    "bool"
			default: "no"
		}
		tags: {
			description: [
				"Tags to be applied to a VPC options set if a new one is created, or if the resource_id is provided. (options must match)",
			]

			aliases: ["resource_tags"]
			version_added: "2.1"
			type:          "dict"
		}
		dhcp_options_id: {
			description: [
				"The resource_id of an existing DHCP options set. If this is specified, then it will override other settings, except tags (which will be updated to match)",
			]

			version_added: "2.1"
			type:          "str"
		}
		state: {
			description: [
				"create/assign or remove the DHCP options. If state is set to absent, then a DHCP options set matched either by id, or tags and options will be removed if possible.",
			]

			default: "present"
			choices: ["absent", "present"]
			version_added: "2.1"
			type:          "str"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	requirements: ["boto"]
}
