package ansible

module: mso_schema_template_external_epg_subnet: {
	module:            "mso_schema_template_external_epg_subnet"
	short_description: "Manage External EPG subnets in schema templates"
	description: [
		"Manage External EPG subnets in schema templates on Cisco ACI Multi-Site.",
	]
	author: [
		"Devarshi Shah (@devarshishah3)",
	]
	version_added: "2.10"
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
		external_epg: {
			description: [
				"The name of the External EPG to manage.",
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
		}
		scope: {
			description: [
				"The scope of the subnet.",
			]
			type: "list"
		}
		aggregate: {
			description: [
				"The aggregate option for the subnet.",
			]
			type: "list"
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
