package ansible

module: mso_schema_template_l3out: {
	module:            "mso_schema_template_l3out"
	short_description: "Manage l3outs in schema templates"
	description: [
		"Manage l3outs in schema templates on Cisco ACI Multi-Site.",
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
		l3out: {
			description: [
				"The name of the l3out to manage.",
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
				"The VRF associated to this L3out.",
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
						"If this parameter is unspecified, it defaults to the current schema.",
					]
					type: "str"
				}
			}
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
