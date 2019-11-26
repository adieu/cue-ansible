package ansible

module: cronvar: {
	module:            "cronvar"
	short_description: "Manage variables in crontabs"
	description: [
		"Use this module to manage crontab variables.",
		"This module allows you to create, update, or delete cron variable definitions.",
	]
	version_added: "2.0"
	options: {
		name: {
			description: [
				"Name of the crontab variable.",
			]
			type:     "str"
			required: true
		}
		value: {
			description: [
				"The value to set this variable to.",
				"Required if C(state=present).",
			]
			type: "str"
		}
		insertafter: {
			description: [
				"If specified, the variable will be inserted after the variable specified.",
				"Used with C(state=present).",
			]
			type: "str"
		}
		insertbefore: {
			description: [
				"Used with C(state=present). If specified, the variable will be inserted just before the variable specified.",
			]

			type: "str"
		}
		state: {
			description: [
				"Whether to ensure that the variable is present or absent.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		user: {
			description: [
				"The specific user whose crontab should be modified.",
				"This parameter defaults to C(root) when unset.",
			]
			type: "str"
		}
		cron_file: {
			description: [
				"If specified, uses this file instead of an individual user's crontab.",
				"Without a leading C(/), this is assumed to be in I(/etc/cron.d).",
				"With a leading C(/), this is taken as absolute.",
			]
			type: "str"
		}
		backup: {
			description: [
				"If set, create a backup of the crontab before it is modified. The location of the backup is returned in the C(backup) variable by this module.",
			]

			type:    "bool"
			default: false
		}
	}
	requirements: [
		"cron",
	]
	author: ["Doug Luce (@dougluce)"]
}
