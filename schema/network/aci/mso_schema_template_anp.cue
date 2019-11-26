package ansible

module: mso_schema_template_anp: {
	module:            "mso_schema_template_anp"
	short_description: "Manage Application Network Profiles (ANPs) in schema templates"
	description: [
		"Manage ANPs in schema templates on Cisco ACI Multi-Site.",
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
		anp: {
			description: [
				"The name of the ANP to manage.",
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
	seealso: [{
		module: "mso_schema_template"
	}, {
		module: "mso_schema_template_anp_epg"
	}]
	extends_documentation_fragment: "mso"
}
