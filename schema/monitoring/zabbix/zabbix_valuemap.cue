package ansible

module: zabbix_valuemap: {
	module:            "zabbix_valuemap"
	short_description: "Create/update/delete Zabbix value maps"
	description: [
		"This module allows you to create, modify and delete Zabbix value maps.",
	]
	version_added: "2.10"
	author: [
		"Ruben Tsirunyan (@rubentsirunyan)",
	]
	requirements: [
		"zabbix-api >= 0.5.3",
	]
	options: {
		name: {
			type: "str"
			description: [
				"Name of the value map.",
			]
			required: true
		}
		state: {
			type: "str"
			description: [
				"State of the value map.",
				"On C(present), it will create a value map if it does not exist or update the value map if the associated data is different.",
				"On C(absent), it will remove the value map if it exists.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		mappings: {
			type: "list"
			description: [
				"List of value mappings for the value map.",
			]
			required: true
			suboptions: {
				value: {
					type:        "str"
					description: "Original value."
					required:    true
				}
				map_to: {
					type:        "str"
					description: "Value to which the original value is mapped to."
					required:    true
				}
			}
		}
	}

	extends_documentation_fragment: ["zabbix"]
}
