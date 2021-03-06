package ansible

module: xfs_quota: {
	module:            "xfs_quota"
	short_description: "Manage quotas on XFS filesystems"
	description: [
		"Configure quotas on XFS filesystems.",
		"Before using this module /etc/projects and /etc/projid need to be configured.",
	]
	version_added: "2.8"
	author: [
		"William Leemans (@bushvin)",
	]
	options: {
		type: {
			description: [
				"The XFS quota type.",
			]
			type:     "str"
			required: true
			choices: [
				"user",
				"group",
				"project",
			]
		}
		name: {
			description: [
				"The name of the user, group or project to apply the quota to, if other than default.",
			]
			type: "str"
		}
		mountpoint: {
			description: [
				"The mount point on which to apply the quotas.",
			]
			type:     "str"
			required: true
		}
		bhard: {
			description: [
				"Hard blocks quota limit.",
				"This argument supports human readable sizes.",
			]
			type: "str"
		}
		bsoft: {
			description: [
				"Soft blocks quota limit.",
				"This argument supports human readable sizes.",
			]
			type: "str"
		}
		ihard: {
			description: [
				"Hard inodes quota limit.",
			]
			type: "int"
		}
		isoft: {
			description: [
				"Soft inodes quota limit.",
			]
			type: "int"
		}
		rtbhard: {
			description: [
				"Hard realtime blocks quota limit.",
				"This argument supports human readable sizes.",
			]
			type: "str"
		}
		rtbsoft: {
			description: [
				"Soft realtime blocks quota limit.",
				"This argument supports human readable sizes.",
			]
			type: "str"
		}
		state: {
			description: [
				"Whether to apply the limits or remove them.",
				"When removing limit, they are set to 0, and not quite removed.",
			]
			type:    "str"
			default: "present"
			choices: [
				"present",
				"absent",
			]
		}
	}

	requirements: ["xfsprogs"]
}
