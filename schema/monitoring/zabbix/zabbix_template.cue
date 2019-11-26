package ansible

module: zabbix_template: {
	module:            "zabbix_template"
	short_description: "Create/update/delete/dump Zabbix template"
	description: [
		"This module allows you to create, modify, delete and dump Zabbix templates.",
		"Multiple templates can be created or modified at once if passing JSON or XML to module.",
	]
	version_added: "2.5"
	author: [
		"sookido (@sookido)",
		"Logan Vig (@logan2211)",
		"Dusan Matejka (@D3DeFi)",
	]
	requirements: [
		"python >= 2.6",
		"zabbix-api >= 0.5.3",
	]
	options: {
		template_name: {
			description: [
				"Name of Zabbix template.",
				"Required when I(template_json) or I(template_xml) are not used.",
				"Mutually exclusive with I(template_json) and I(template_xml).",
			]
			required: false
		}
		template_json: {
			description: [
				"JSON dump of templates to import.",
				"Multiple templates can be imported this way.",
				"Mutually exclusive with I(template_name) and I(template_xml).",
			]
			required: false
			type:     "json"
		}
		template_xml: {
			description: [
				"XML dump of templates to import.",
				"Multiple templates can be imported this way.",
				"You are advised to pass XML structure matching the structure used by your version of Zabbix server.",
				"Custom XML structure can be imported as long as it is valid, but may not yield consistent idempotent results on subsequent runs.",
				"Mutually exclusive with I(template_name) and I(template_json).",
			]
			required:      false
			version_added: "2.9"
		}
		template_groups: {
			description: [
				"List of host groups to add template to when template is created.",
				"Replaces the current host groups the template belongs to if the template is already present.",
				"Required when creating a new template with C(state=present) and I(template_name) is used. Not required when updating an existing template.",
			]

			required: false
			type:     "list"
		}
		link_templates: {
			description: [
				"List of template names to be linked to the template.",
				"Templates that are not specified and are linked to the existing template will be only unlinked and not cleared from the template.",
			]

			required: false
			type:     "list"
		}
		clear_templates: {
			description: [
				"List of template names to be unlinked and cleared from the template.",
				"This option is ignored if template is being created for the first time.",
			]
			required: false
			type:     "list"
		}
		macros: {
			description: [
				"List of user macros to create for the template.",
				"Macros that are not specified and are present on the existing template will be replaced.",
				"See examples on how to pass macros.",
			]
			required: false
			type:     "list"
			suboptions: {
				name: description: [
					"Name of the macro.",
					"Must be specified in {$NAME} format.",
				]
				value: description: [
					"Value of the macro.",
				]
			}
		}
		dump_format: {
			description: [
				"Format to use when dumping template with C(state=dump).",
			]
			required: false
			choices: ["json", "xml"]
			default:       "json"
			version_added: "2.9"
		}
		state: {
			description: [
				"Required state of the template.",
				"On C(state=present) template will be created/imported or updated depending if it is already present.",
				"On C(state=dump) template content will get dumped into required format specified in I(dump_format).",
				"On C(state=absent) template will be deleted.",
			]
			required: false
			choices: ["present", "absent", "dump"]
			default: "present"
		}
	}

	extends_documentation_fragment: ["zabbix"]
}
