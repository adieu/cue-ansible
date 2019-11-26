package ansible

module: mso_schema_site_vrf_region_cidr_subnet: {
	module:            "mso_schema_site_vrf_region_cidr_subnet"
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
				"The name of the region.",
			]
			type: "str"
		}
		cidr: {
			description: [
				"The IP range of for the region CIDR.",
			]
			type: "str"
		}
		subnet: {
			description: [
				"The IP subnet of this region CIDR.",
			]
			type: "str"
			aliases: ["ip"]
		}
		zone: {
			description: [
				"The name of the zone for the region CIDR subnet.",
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
	notes: [
		"The ACI MultiSite PATCH API has a deficiency requiring some objects to be referenced by index. This can cause silent corruption on concurrent access when changing/removing on object as the wrong object may be referenced. This module is affected by this deficiency.",
	]

	seealso: [{
		module: "mso_schema_site_vrf_region_cidr"
	}, {
		module: "mso_schema_template_vrf"
	}]
	extends_documentation_fragment: "mso"
}
