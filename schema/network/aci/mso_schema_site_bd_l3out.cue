package ansible

module: mso_schema_site_bd_l3out: {
	module:            "mso_schema_site_bd_l3out"
	short_description: "Manage site-local BD l3out's in schema template"
	description: [
		"Manage site-local BDs l3out's in schema template on Cisco ACI Multi-Site.",
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
		bd: {
			description: [
				"The name of the BD.",
			]
			type: "str"
			aliases: ["name"]
		}
		l3out: {
			description: [
				"The name of the l3out.",
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
	notes: [
		"The ACI MultiSite PATCH API has a deficiency requiring some objects to be referenced by index. This can cause silent corruption on concurrent access when changing/removing on object as the wrong object may be referenced. This module is affected by this deficiency.",
	]

	seealso: [{
		module: "mso_schema_site_bd"
	}, {
		module: "mso_schema_template_bd"
	}]
	extends_documentation_fragment: "mso"
}
