package ansible

module: fortios_antivirus_quarantine: {
	module:            "fortios_antivirus_quarantine"
	short_description: "Configure quarantine options in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify antivirus feature and quarantine category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
	]

	version_added: "2.8"
	author: [
		"Miguel Angel Munoz (@mamunozgonzalez)",
		"Nicolas Thomas (@thomnico)",
	]
	notes: [
		"Requires fortiosapi library developed by Fortinet",
		"Run as a local_action in your playbook",
	]
	requirements: [
		"fortiosapi>=0.9.8",
	]
	options: {
		host: {
			description: [
				"FortiOS or FortiGate IP address.",
			]
			type:     "str"
			required: false
		}
		username: {
			description: [
				"FortiOS or FortiGate username.",
			]
			type:     "str"
			required: false
		}
		password: {
			description: [
				"FortiOS or FortiGate password.",
			]
			type:    "str"
			default: ""
		}
		vdom: {
			description: [
				"Virtual domain, among those defined previously. A vdom is a virtual instance of the FortiGate that can be configured and used as a different unit.",
			]

			type:    "str"
			default: "root"
		}
		https: {
			description: [
				"Indicates if the requests towards FortiGate must use HTTPS protocol.",
			]
			type:    "bool"
			default: true
		}
		ssl_verify: {
			description: [
				"Ensures FortiGate certificate must be verified by a proper CA.",
			]
			type:          "bool"
			default:       true
			version_added: 2.9
		}
		antivirus_quarantine: {
			description: [
				"Configure quarantine options.",
			]
			default: null
			type:    "dict"
			suboptions: {
				agelimit: {
					description: [
						"Age limit for quarantined files (0 - 479 hours, 0 means forever).",
					]
					type: "int"
				}
				destination: {
					description: [
						"Choose whether to quarantine files to the FortiGate disk or to FortiAnalyzer or to delete them instead of quarantining them.",
					]
					type: "str"
					choices: [ null,
						"disk",
						"FortiAnalyzer",
					]
				}
				drop_blocked: {
					description: [
						"Do not quarantine dropped files found in sessions using the selected protocols. Dropped files are deleted instead of being quarantined.",
					]
					type: "str"
					choices: [
						"imap",
						"smtp",
						"pop3",
						"http",
						"ftp",
						"nntp",
						"imaps",
						"smtps",
						"pop3s",
						"ftps",
						"mapi",
						"cifs",
						"mm1",
						"mm3",
						"mm4",
						"mm7",
					]
				}
				drop_heuristic: {
					description: [
						"Do not quarantine files detected by heuristics found in sessions using the selected protocols. Dropped files are deleted instead of being quarantined.",
					]

					type: "str"
					choices: [
						"imap",
						"smtp",
						"pop3",
						"http",
						"ftp",
						"nntp",
						"imaps",
						"smtps",
						"pop3s",
						"https",
						"ftps",
						"mapi",
						"cifs",
						"mm1",
						"mm3",
						"mm4",
						"mm7",
					]
				}
				drop_infected: {
					description: [
						"Do not quarantine infected files found in sessions using the selected protocols. Dropped files are deleted instead of being quarantined.",
					]
					type: "str"
					choices: [
						"imap",
						"smtp",
						"pop3",
						"http",
						"ftp",
						"nntp",
						"imaps",
						"smtps",
						"pop3s",
						"https",
						"ftps",
						"mapi",
						"cifs",
						"mm1",
						"mm3",
						"mm4",
						"mm7",
					]
				}
				lowspace: {
					description: [
						"Select the method for handling additional files when running low on disk space.",
					]
					type: "str"
					choices: [
						"drop-new",
						"ovrw-old",
					]
				}
				maxfilesize: {
					description: [
						"Maximum file size to quarantine (0 - 500 Mbytes, 0 means unlimited).",
					]
					type: "int"
				}
				quarantine_quota: {
					description: [
						"The amount of disk space to reserve for quarantining files (0 - 4294967295 Mbytes, depends on disk space).",
					]
					type: "int"
				}
				store_blocked: {
					description: [
						"Quarantine blocked files found in sessions using the selected protocols.",
					]
					type: "str"
					choices: [
						"imap",
						"smtp",
						"pop3",
						"http",
						"ftp",
						"nntp",
						"imaps",
						"smtps",
						"pop3s",
						"ftps",
						"mapi",
						"cifs",
						"mm1",
						"mm3",
						"mm4",
						"mm7",
					]
				}
				store_heuristic: {
					description: [
						"Quarantine files detected by heuristics found in sessions using the selected protocols.",
					]
					type: "str"
					choices: [
						"imap",
						"smtp",
						"pop3",
						"http",
						"ftp",
						"nntp",
						"imaps",
						"smtps",
						"pop3s",
						"https",
						"ftps",
						"mapi",
						"cifs",
						"mm1",
						"mm3",
						"mm4",
						"mm7",
					]
				}
				store_infected: {
					description: [
						"Quarantine infected files found in sessions using the selected protocols.",
					]
					type: "str"
					choices: [
						"imap",
						"smtp",
						"pop3",
						"http",
						"ftp",
						"nntp",
						"imaps",
						"smtps",
						"pop3s",
						"https",
						"ftps",
						"mapi",
						"cifs",
						"mm1",
						"mm3",
						"mm4",
						"mm7",
					]
				}
			}
		}
	}
}
