package ansible

module: ec2_transit_gateway: {
	module:            "ec2_transit_gateway"
	short_description: "Create and delete AWS Transit Gateways"
	description: [
		"Creates AWS Transit Gateways.",
		"Deletes AWS Transit Gateways.",
		"Updates tags on existing transit gateways.",
	]
	version_added: "2.8"
	requirements: ["botocore", "boto3"]
	options: {
		asn: {
			description: [
				"A private Autonomous System Number (ASN) for the Amazon side of a BGP session.",
				"The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to 4294967294 for 32-bit ASNs.",
			]
			type: "int"
		}
		auto_associate: {
			description: [
				"Enable or disable automatic association with the default association route table.",
			]
			default: true
			type:    "bool"
		}
		auto_attach: {
			description: [
				"Enable or disable automatic acceptance of attachment requests.",
			]
			default: false
			type:    "bool"
		}
		auto_propagate: {
			description: [
				"Enable or disable automatic propagation of routes to the default propagation route table.",
			]
			default: true
			type:    "bool"
		}
		description: {
			description: [
				"The description of the transit gateway.",
			]
			type: "str"
		}
		dns_support: {
			description: [
				"Whether to enable AWS DNS support.",
			]
			default: true
			type:    "bool"
		}
		purge_tags: {
			description: [
				"Whether to purge existing tags not included with tags argument.",
			]
			default: true
			type:    "bool"
		}
		state: {
			description: [
				"C(present) to ensure resource is created.",
				"C(absent) to remove resource.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		tags: {
			description: [
				"A dictionary of resource tags",
			]
			type: "dict"
		}
		transit_gateway_id: {
			description: [
				"The ID of the transit gateway.",
			]
			type: "str"
		}
		vpn_ecmp_support: {
			description: [
				"Enable or disable Equal Cost Multipath Protocol support.",
			]
			default: true
			type:    "bool"
		}
		wait: {
			description: [
				"Whether to wait for status",
			]
			default: true
			type:    "bool"
		}
		wait_timeout: {
			description: [
				"number of seconds to wait for status",
			]
			default: 300
			type:    "int"
		}
	}

	author: "Bob Boldin (@BobBoldin)"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
