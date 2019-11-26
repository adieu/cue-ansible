package ansible

module: zabbix_hostmacro: {
	module:            "zabbix_hostmacro"
	short_description: "Create/update/delete Zabbix host macros"
	description: [
		"manages Zabbix host macros, it can create, update or delete them.",
	]
	version_added: "2.0"
	author: [
		"Cove (@cove)",
		"Dean Hailin Song (!UNKNOWN)",
	]
	requirements: [
		"python >= 2.6",
		"zabbix-api >= 0.5.3",
	]
	options: {
		host_name: {
			description: [
				"Name of the host.",
			]
			required: true
		}
		macro_name: {
			description: [
				"Name of the host macro without the enclosing curly braces and the leading dollar sign.",
			]
			required: true
		}
		macro_value: {
			description: [
				"Value of the host macro.",
			]
			required: true
		}
		state: {
			description: [
				"State of the macro.",
				"On C(present), it will create if macro does not exist or update the macro if the associated data is different.",
				"On C(absent) will remove a macro if it exists.",
			]
			required: false
			choices: ["present", "absent"]
			default: "present"
		}
		force: {
			description: [
				"Only updates an existing macro if set to C(yes).",
			]
			default:       "yes"
			type:          "bool"
			version_added: 2.5
		}
	}

	extends_documentation_fragment: ["zabbix"]
}
