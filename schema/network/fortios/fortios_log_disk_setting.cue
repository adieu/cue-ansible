package ansible

module: fortios_log_disk_setting: {
	module:            "fortios_log_disk_setting"
	short_description: "Settings for local disk logging in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify log_disk feature and setting category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		log_disk_setting: {
			description: [
				"Settings for local disk logging.",
			]
			default: null
			type:    "dict"
			suboptions: {
				diskfull: {
					description: [
						"Action to take when disk is full. The system can overwrite the oldest log messages or stop logging when the disk is full .",
					]
					type: "str"
					choices: [
						"overwrite",
						"nolog",
					]
				}
				dlp_archive_quota: {
					description: [
						"DLP archive quota (MB).",
					]
					type: "int"
				}
				full_final_warning_threshold: {
					description: [
						"Log full final warning threshold as a percent (3 - 100).",
					]
					type: "int"
				}
				full_first_warning_threshold: {
					description: [
						"Log full first warning threshold as a percent (1 - 98).",
					]
					type: "int"
				}
				full_second_warning_threshold: {
					description: [
						"Log full second warning threshold as a percent (2 - 99).",
					]
					type: "int"
				}
				ips_archive: {
					description: [
						"Enable/disable IPS packet archiving to the local disk.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				log_quota: {
					description: [
						"Disk log quota (MB).",
					]
					type: "int"
				}
				max_log_file_size: {
					description: [
						"Maximum log file size before rolling (1 - 100 Mbytes).",
					]
					type: "int"
				}
				max_policy_packet_capture_size: {
					description: [
						"Maximum size of policy sniffer in MB (0 means unlimited).",
					]
					type: "int"
				}
				maximum_log_age: {
					description: [
						"Delete log files older than (days).",
					]
					type: "int"
				}
				report_quota: {
					description: [
						"Report quota (MB).",
					]
					type: "int"
				}
				roll_day: {
					description: [
						"Day of week on which to roll log file.",
					]
					type: "str"
					choices: [
						"sunday",
						"monday",
						"tuesday",
						"wednesday",
						"thursday",
						"friday",
						"saturday",
					]
				}
				roll_schedule: {
					description: [
						"Frequency to check log file for rolling.",
					]
					type: "str"
					choices: [
						"daily",
						"weekly",
					]
				}
				roll_time: {
					description: [
						"Time of day to roll the log file (hh:mm).",
					]
					type: "str"
				}
				source_ip: {
					description: [
						"Source IP address to use for uploading disk log files.",
					]
					type: "str"
				}
				status: {
					description: [
						"Enable/disable local disk logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				upload: {
					description: [
						"Enable/disable uploading log files when they are rolled.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				upload_delete_files: {
					description: [
						"Delete log files after uploading .",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				upload_destination: {
					description: [
						"The type of server to upload log files to. Only FTP is currently supported.",
					]
					type: "str"
					choices: [
						"ftp-server",
					]
				}
				upload_ssl_conn: {
					description: [
						"Enable/disable encrypted FTPS communication to upload log files.",
					]
					type: "str"
					choices: [
						"default",
						"high",
						"low",
						"disable",
					]
				}
				uploaddir: {
					description: [
						"The remote directory on the FTP server to upload log files to.",
					]
					type: "str"
				}
				uploadip: {
					description: [
						"IP address of the FTP server to upload log files to.",
					]
					type: "str"
				}
				uploadpass: {
					description: [
						"Password required to log into the FTP server to upload disk log files.",
					]
					type: "str"
				}
				uploadport: {
					description: [
						"TCP port to use for communicating with the FTP server .",
					]
					type: "int"
				}
				uploadsched: {
					description: [
						"Set the schedule for uploading log files to the FTP server .",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				uploadtime: {
					description: [
						"Time of day at which log files are uploaded if uploadsched is enabled (hh:mm or hh).",
					]
					type: "str"
				}
				uploadtype: {
					description: [
						"Types of log files to upload. Separate multiple entries with a space.",
					]
					type: "str"
					choices: [
						"traffic",
						"event",
						"virus",
						"webfilter",
						"IPS",
						"spamfilter",
						"dlp-archive",
						"anomaly",
						"voip",
						"dlp",
						"app-ctrl",
						"waf",
						"netscan",
						"gtp",
						"dns",
					]
				}
				uploaduser: {
					description: [
						"Username required to log into the FTP server to upload disk log files.",
					]
					type: "str"
				}
			}
		}
	}
}
