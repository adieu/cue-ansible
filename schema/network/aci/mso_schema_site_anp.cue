package ansible

module: mso_schema_site_anp: {
	module:            "mso_schema_site_anp"
	short_description: "Manage site-local Application Network Profiles (ANPs) in schema template"
	description: [
		"Manage site-local ANPs in schema template on Cisco ACI Multi-Site.",
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
		site: {
			description: [
				"The name of the site.",
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
		module: "mso_schema_site"
	}, {
		module: "mso_schema_site_anp_epg"
	}, {
		module: "mso_schema_template_anp"
	}]
	extends_documentation_fragment: "mso"
}
