package ansible

module: mso_schema_site_anp_epg_staticleaf: {
	module:            "mso_schema_site_anp_epg_staticleaf"
	short_description: "Manage site-local EPG static leafs in schema template"
	description: [
		"Manage site-local EPG static leafs in schema template on Cisco ACI Multi-Site.",
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
				"The name of the ANP.",
			]
			type: "str"
		}
		epg: {
			description: [
				"The name of the EPG.",
			]
			type: "str"
		}
		pod: {
			description: [
				"The pod of the static leaf.",
			]
			type: "str"
		}
		leaf: {
			description: [
				"The path of the static leaf.",
			]
			type: "str"
			aliases: ["name"]
		}
		vlan: {
			description: [
				"The VLAN id of the static leaf.",
			]
			type: "int"
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
		module: "mso_schema_site_anp_epg"
	}, {
		module: "mso_schema_template_anp_epg"
	}]
	extends_documentation_fragment: "mso"
}
