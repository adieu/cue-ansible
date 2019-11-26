package ansible

module: mso_schema: {
	module:            "mso_schema"
	short_description: "Manage schemas"
	description: [
		"Manage schemas on Cisco ACI Multi-Site.",
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
			aliases: ["name"]
		}
		templates: {
			description: [
				"A list of templates for this schema.",
			]
			type: "list"
		}
		sites: {
			description: [
				"A list of sites mapped to templates in this schema.",
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
		"Due to restrictions of the MSO REST API this module cannot create empty schemas (i.e. schemas without templates). Use the M(mso_schema_template) to automatically create schemas with templates.",
	]

	seealso: [{
		module: "mso_schema_site"
	}, {
		module: "mso_schema_template"
	}]
	extends_documentation_fragment: "mso"
}
