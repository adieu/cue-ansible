package ansible

module: sysctl: {
	module:            "sysctl"
	short_description: "Manage entries in sysctl.conf."
	description: [
		"This module manipulates sysctl entries and optionally performs a C(/sbin/sysctl -p) after changing them.",
	]
	version_added: "1.0"
	options: {
		name: {
			description: [
				"The dot-separated path (aka I(key)) specifying the sysctl variable.",
			]
			required: true
			aliases: ["key"]
		}
		value: {
			description: [
				"Desired value of the sysctl key.",
			]
			aliases: ["val"]
		}
		state: {
			description: [
				"Whether the entry should be present or absent in the sysctl file.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		ignoreerrors: {
			description: [
				"Use this option to ignore errors about unknown keys.",
			]
			type:    "bool"
			default: "no"
		}
		reload: {
			description: [
				"If C(yes), performs a I(/sbin/sysctl -p) if the C(sysctl_file) is updated. If C(no), does not reload I(sysctl) even if the C(sysctl_file) is updated.",
			]

			type:    "bool"
			default: "yes"
		}
		sysctl_file: {
			description: [
				"Specifies the absolute path to C(sysctl.conf), if not C(/etc/sysctl.conf).",
			]
			default: "/etc/sysctl.conf"
		}
		sysctl_set: {
			description: [
				"Verify token value with the sysctl command and set with -w if necessary",
			]
			type:          "bool"
			default:       "no"
			version_added: 1.5
		}
	}
	author: "David CHANIAL (@davixx) <david.chanial@gmail.com>"
}
