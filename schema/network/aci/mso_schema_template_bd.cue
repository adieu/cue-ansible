package ansible

module: mso_schema_template_bd: {
	module:            "mso_schema_template_bd"
	short_description: "Manage Bridge Domains (BDs) in schema templates"
	description: [
		"Manage BDs in schema templates on Cisco ACI Multi-Site.",
	]
	author: [
		"Dag Wieers (@dagwieers)",
	]
	version_added: "2.8"
	options: {
		schema: {
			description: [
				"The name of the schema.",
			]
			type:     "str"
			required: true
		}
		template: {
			description: [
				"The name of the template.",
			]
			type:     "str"
			required: true
		}
		bd: {
			description: [
				"The name of the BD to manage.",
			]
			type: "str"
			aliases: ["name"]
		}
		display_name: {
			description: [
				"The name as displayed on the MSO web interface.",
			]
			type: "str"
		}
		vrf: {
			description: [
				"The VRF associated to this BD. This is required only when creating a new BD.",
			]
			type: "dict"
			suboptions: {
				name: {
					description: [
						"The name of the VRF to associate with.",
					]
					required: true
					type:     "str"
				}
				schema: {
					description: [
						"The schema that defines the referenced VRF.",
						"If this parameter is unspecified, it defaults to the current schema.",
					]
					type: "str"
				}
				template: {
					description: [
						"The template that defines the referenced VRF.",
						"If this parameter is unspecified, it defaults to the current template.",
					]
					type: "str"
				}
			}
		}
		subnets: {
			description: [
				"The subnets associated to this BD.",
			]
			type: "list"
			suboptions: {
				subnet: {
					description: [
						"The IP range in CIDR notation.",
					]
					type:     "str"
					required: true
					aliases: ["ip"]
				}
				description: {
					description: [
						"The description of this subnet.",
					]
					type: "str"
				}
				scope: {
					description: [
						"The scope of the subnet.",
					]
					type: "str"
					choices: ["private", "public"]
				}
				shared: {
					description: [
						"Whether this subnet is shared between VRFs.",
					]
					type: "bool"
				}
				no_default_gateway: {
					description: [
						"Whether this subnet has a default gateway.",
					]
					type: "bool"
				}
			}
		}
		intersite_bum_traffic: {
			description: [
				"Whether to allow intersite BUM traffic.",
			]
			type: "bool"
		}
		optimize_wan_bandwidth: {
			description: [
				"Whether to optimize WAN bandwidth.",
			]
			type: "bool"
		}
		layer2_stretch: {
			description: [
				"Whether to enable L2 stretch.",
			]
			type: "bool"
		}
		layer2_unknown_unicast: {
			description: [
				"Layer2 unknown unicast.",
			]
			type: "str"
			choices: ["flood", "proxy"]
		}
		layer3_multicast: {
			description: [
				"Whether to enable L3 multicast.",
			]
			type: "bool"
		}
		state: {
			description: [
				"Use C(present) or C(absent) for adding or removing.",
				"Use C(query) for listing an object or multiple objects.",
			]
			type: "str"
			choices: ["absent", "present", "query"]
			default: "present"
		}
	}
	extends_documentation_fragment: "mso"
}
