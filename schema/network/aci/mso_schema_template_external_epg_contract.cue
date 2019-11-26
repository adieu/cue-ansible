package ansible

module: mso_schema_template_external_epg_contract: {
	module:            "mso_schema_template_external_epg_contract"
	short_description: "Manage Extrnal EPG contracts in schema templates"
	description: [
		"Manage External EPG contracts in schema templates on Cisco ACI Multi-Site.",
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
				"The name of the EPG to manage.",
			]
			type:     "str"
			required: true
		}
		contract: {
			description: [
				"A contract associated to this EPG.",
			]
			type: "dict"
			suboptions: {
				name: {
					description: [
						"The name of the Contract to associate with.",
					]
					required: true
					type:     "str"
				}
				schema: {
					description: [
						"The schema that defines the referenced BD.",
						"If this parameter is unspecified, it defaults to the current schema.",
					]
					type: "str"
				}
				template: {
					description: [
						"The template that defines the referenced BD.",
					]
					type: "str"
				}
				type: {
					description: [
						"The type of contract.",
					]
					type:     "str"
					required: true
					choices: ["consumer", "provider"]
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
	seealso: [{
		module: "mso_schema_template_externalepg"
	}, {
		module: "mso_schema_template_contract_filter"
	}]
	extends_documentation_fragment: "mso"
}
