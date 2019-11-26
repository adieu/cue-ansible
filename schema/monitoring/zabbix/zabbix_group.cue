package ansible

module: zabbix_group: {
	module:            "zabbix_group"
	short_description: "Create/delete Zabbix host groups"
	description: [
		"Create host groups if they do not exist.",
		"Delete existing host groups if they exist.",
	]
	version_added: "1.8"
	author: [
		"Cove (@cove)",
		"Tony Minfei Ding (!UNKNOWN)",
		"Harrison Gu (@harrisongu)",
	]
	requirements: [
		"python >= 2.6",
		"zabbix-api >= 0.5.3",
	]
	options: {
		state: {
			description: [
				"Create or delete host group.",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
		host_groups: {
			description: [
				"List of host groups to create or delete.",
			]
			required: true
			aliases: ["host_group"]
		}
	}

	extends_documentation_fragment: [
		"zabbix",
	]

	notes: ["Too many concurrent updates to the same group may cause Zabbix to return errors, see examples for a workaround if needed."]
}
