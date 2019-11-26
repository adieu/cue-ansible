package ansible

module: mso_schema_template_anp_epg_subnet: {
	module:            "mso_schema_template_anp_epg_subnet"
	short_description: "Manage EPG subnets in schema templates"
	description: [
		"Manage EPG subnets in schema templates on Cisco ACI Multi-Site.",
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
				"The name of the template to change.",
			]
			type:     "str"
			required: true
		}
		anp: {
			description: [
				"The name of the ANP.",
			]
			type:     "str"
			required: true
		}
		epg: {
			description: [
				"The name of the EPG to manage.",
			]
			type:     "str"
			required: true
		}
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
	notes: [
		"Due to restrictions of the MSO REST API concurrent modifications to EPG subnets can be dangerous and corrupt data.",
	]
	extends_documentation_fragment: "mso"
}
