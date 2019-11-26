package ansible

module: zabbix_group_info: {
	module:            "zabbix_group_info"
	short_description: "Gather information about Zabbix hostgroup"
	description: [
		"This module allows you to search for Zabbix hostgroup entries.",
		"This module was called C(zabbix_group_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.6"
	author: [
		"Michael Miko (@RedWhiteMiko)",
	]
	requirements: [
		"python >= 2.6",
		"zabbix-api >= 0.5.3",
	]
	options: hostgroup_name: {
		description: [
			"Name of the hostgroup in Zabbix.",
			"hostgroup is the unique identifier used and cannot be updated using this module.",
		]
		required: true
	}
	extends_documentation_fragment: ["zabbix"]
}
