package ansible

module: cron: {
	module:            "cron"
	short_description: "Manage cron.d and crontab entries"
	description: [
		"Use this module to manage crontab and environment variables entries. This module allows you to create environment variables and named crontab entries, update, or delete them.",
		"When crontab jobs are managed: the module includes one line with the description of the crontab entry C(\"#Ansible: <name>\") corresponding to the \"name\" passed to the module, which is used by future ansible/module calls to find/check the state. The \"name\" parameter should be unique, and changing the \"name\" value will result in a new cron task being created (or a different one being removed).",
		"When environment variables are managed, no comment line is added, but, when the module needs to find/check the state, it uses the \"name\" parameter to find the environment variable definition line.",
		"When using symbols such as %, they must be properly escaped.",
	]
	version_added: "0.9"
	options: {
		name: {
			description: [
				"Description of a crontab entry or, if env is set, the name of environment variable.",
				"Required if C(state=absent).",
				"Note that if name is not set and C(state=present), then a new crontab entry will always be created, regardless of existing ones.",
				"This parameter will always be required in future releases.",
			]
			type: "str"
		}
		user: {
			description: [
				"The specific user whose crontab should be modified.",
				"When unset, this parameter defaults to using C(root).",
			]
			type: "str"
		}
		job: {
			description: [
				"The command to execute or, if env is set, the value of environment variable.",
				"The command should not contain line breaks.",
				"Required if C(state=present).",
			]
			type: "str"
			aliases: ["value"]
		}
		state: {
			description: [
				"Whether to ensure the job or environment variable is present or absent.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		cron_file: {
			description: [
				"If specified, uses this file instead of an individual user's crontab.",
				"If this is a relative path, it is interpreted with respect to I(/etc/cron.d).",
				"If it is absolute, it will typically be I(/etc/crontab).",
				"Many linux distros expect (and some require) the filename portion to consist solely of upper- and lower-case letters, digits, underscores, and hyphens.",
				"To use the C(cron_file) parameter you must specify the C(user) as well.",
			]
			type: "str"
		}
		backup: {
			description: [
				"If set, create a backup of the crontab before it is modified. The location of the backup is returned in the C(backup_file) variable by this module.",
			]

			type:    "bool"
			default: false
		}
		minute: {
			description: [
				"Minute when the job should run ( 0-59, *, */2, etc )",
			]
			type:    "str"
			default: "*"
		}
		hour: {
			description: [
				"Hour when the job should run ( 0-23, *, */2, etc )",
			]
			type:    "str"
			default: "*"
		}
		day: {
			description: [
				"Day of the month the job should run ( 1-31, *, */2, etc )",
			]
			type:    "str"
			default: "*"
			aliases: ["dom"]
		}
		month: {
			description: [
				"Month of the year the job should run ( 1-12, *, */2, etc )",
			]
			type:    "str"
			default: "*"
		}
		weekday: {
			description: [
				"Day of the week that the job should run ( 0-6 for Sunday-Saturday, *, etc )",
			]
			type:    "str"
			default: "*"
			aliases: ["dow"]
		}
		reboot: {
			description: [
				"If the job should be run at reboot. This option is deprecated. Users should use special_time.",
			]
			version_added: "1.0"
			type:          "bool"
			default:       false
		}
		special_time: {
			description: [
				"Special time specification nickname.",
			]
			type: "str"
			choices: ["annually", "daily", "hourly", "monthly", "reboot", "weekly", "yearly"]
			version_added: "1.3"
		}
		disabled: {
			description: [
				"If the job should be disabled (commented out) in the crontab.",
				"Only has effect if C(state=present).",
			]
			type:          "bool"
			default:       false
			version_added: "2.0"
		}
		env: {
			description: [
				"If set, manages a crontab's environment variable.",
				"New variables are added on top of crontab.",
				"C(name) and C(value) parameters are the name and the value of environment variable.",
			]
			type:          "bool"
			default:       false
			version_added: "2.1"
		}
		insertafter: {
			description: [
				"Used with C(state=present) and C(env).",
				"If specified, the environment variable will be inserted after the declaration of specified environment variable.",
			]
			type:          "str"
			version_added: "2.1"
		}
		insertbefore: {
			description: [
				"Used with C(state=present) and C(env).",
				"If specified, the environment variable will be inserted before the declaration of specified environment variable.",
			]
			type:          "str"
			version_added: "2.1"
		}
	}
	requirements: [
		"cron",
	]
	author: [
		"Dane Summers (@dsummersl)",
		"Mike Grozak (@rhaido)",
		"Patrick Callahan (@dirtyharrycallahan)",
		"Evan Kaufman (@EvanK)",
		"Luca Berruti (@lberruti)",
	]
}
