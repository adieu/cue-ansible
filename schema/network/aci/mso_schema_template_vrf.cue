package ansible

module: mso_schema_template_vrf: {
	module:            "mso_schema_template_vrf"
	short_description: "Manage VRFs in schema templates"
	description: [
		"Manage VRFs in schema templates on Cisco ACI Multi-Site.",
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
		vrf: {
			description: [
				"The name of the VRF to manage.",
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
		layer3_multicast: {
			description: [
				"Whether to enable L3 multicast.",
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
	extends_documentation_fragment: "mso"
}
