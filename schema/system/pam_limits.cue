package ansible

module: pam_limits: {
	module:        "pam_limits"
	version_added: "2.0"
	author: [
		"Sebastien Rohaut (@usawa)",
	]
	short_description: "Modify Linux PAM limits"
	description: [
		"The C(pam_limits) module modifies PAM limits. The default file is C(/etc/security/limits.conf). For the full documentation, see C(man 5 limits.conf).",
	]

	options: {
		domain: {
			description: [
				"A username, @groupname, wildcard, uid/gid range.",
			]
			required: true
		}
		limit_type: {
			description: [
				"Limit type, see C(man 5 limits.conf) for an explanation",
			]
			required: true
			choices: ["hard", "soft", "-"]
		}
		limit_item: {
			description: [
				"The limit to be set",
			]
			required: true
			choices: [
				"core",
				"data",
				"fsize",
				"memlock",
				"nofile",
				"rss",
				"stack",
				"cpu",
				"nproc",
				"as",
				"maxlogins",
				"maxsyslogins",
				"priority",
				"locks",
				"sigpending",
				"msgqueue",
				"nice",
				"rtprio",
				"chroot",
			]
		}
		value: {
			description: [
				"The value of the limit.",
			]
			required: true
		}
		backup: {
			description: [
				"Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.",
			]

			required: false
			type:     "bool"
			default:  "no"
		}
		use_min: {
			description: [
				"If set to C(yes), the minimal value will be used or conserved. If the specified value is inferior to the value in the file, file content is replaced with the new value, else content is not modified.",
			]

			required: false
			type:     "bool"
			default:  "no"
		}
		use_max: {
			description: [
				"If set to C(yes), the maximal value will be used or conserved. If the specified value is superior to the value in the file, file content is replaced with the new value, else content is not modified.",
			]

			required: false
			type:     "bool"
			default:  "no"
		}
		dest: {
			description: [
				"Modify the limits.conf path.",
			]
			required: false
			default:  "/etc/security/limits.conf"
		}
		comment: {
			description: [
				"Comment associated with the limit.",
			]
			required: false
			default:  ""
		}
	}
	notes: ["If C(dest) file doesn't exist, it is created."]
}
