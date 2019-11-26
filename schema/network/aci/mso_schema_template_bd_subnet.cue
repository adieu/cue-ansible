package ansible

module: mso_schema_template_bd_subnet: {
	module:            "mso_schema_template_bd_subnet"
	short_description: "Manage BD subnets in schema templates"
	description: [
		"Manage BD subnets in schema templates on Cisco ACI Multi-Site.",
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
		bd: {
			description: [
				"The name of the BD to manage.",
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
		"Due to restrictions of the MSO REST API concurrent modifications to BD subnets can be dangerous and corrupt data.",
	]
	extends_documentation_fragment: "mso"
}
