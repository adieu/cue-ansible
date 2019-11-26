package ansible

module: mso_schema_site_vrf_region: {
	module:            "mso_schema_site_vrf_region"
	short_description: "Manage site-local VRF regions in schema template"
	description: [
		"Manage site-local VRF regions in schema template on Cisco ACI Multi-Site.",
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
		vrf: {
			description: [
				"The name of the VRF.",
			]
			type: "str"
		}
		region: {
			description: [
				"The name of the region to manage.",
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
		module: "mso_schema_site_vrf"
	}, {
		module: "mso_schema_template_vrf"
	}]
	extends_documentation_fragment: "mso"
}
