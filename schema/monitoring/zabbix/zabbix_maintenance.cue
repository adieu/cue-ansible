package ansible

module: zabbix_maintenance: {
	module:            "zabbix_maintenance"
	short_description: "Create Zabbix maintenance windows"
	description: [
		"This module will let you create Zabbix maintenance windows.",
	]
	version_added: "1.8"
	author:        "Alexander Bulimov (@abulimov)"
	requirements: [
		"python >= 2.6",
		"zabbix-api >= 0.5.3",
	]
	options: {
		state: {
			description: [
				"Create or remove a maintenance window. Maintenance window to remove is identified by name.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
		host_names: {
			description: [
				"Hosts to manage maintenance window for. Separate multiple hosts with commas. C(host_name) is an alias for C(host_names). B(Required) option when C(state) is I(present) and no C(host_groups) specified.",
			]

			aliases: ["host_name"]
		}
		host_groups: {
			description: [
				"Host groups to manage maintenance window for. Separate multiple groups with commas. C(host_group) is an alias for C(host_groups). B(Required) option when C(state) is I(present) and no C(host_names) specified.",
			]

			aliases: ["host_group"]
		}
		minutes: {
			description: [
				"Length of maintenance window in minutes.",
			]
			default: 10
		}
		name: {
			description: [
				"Unique name of maintenance window.",
			]
			required: true
		}
		desc: {
			description: [
				"Short description of maintenance window.",
			]
			required: true
			default:  "Created by Ansible"
		}
		collect_data: {
			description: [
				"Type of maintenance. With data collection, or without.",
			]
			type:    "bool"
			default: "yes"
		}
	}

	extends_documentation_fragment: [
		"zabbix",
	]

	notes: [
		"Useful for setting hosts in maintenance mode before big update, and removing maintenance window after update.",
		"Module creates maintenance window from now() to now() + minutes, so if Zabbix server's time and host's time are not synchronized, you will get strange results.",
		"Install required module with 'pip install zabbix-api' command.",
	]
}
