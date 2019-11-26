package ansible

module: fortios_log_syslogd2_setting: {
	module:            "fortios_log_syslogd2_setting"
	short_description: "Global settings for remote syslog server in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify log_syslogd2 feature and setting category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		log_syslogd2_setting: {
			description: [
				"Global settings for remote syslog server.",
			]
			default: null
			type:    "dict"
			suboptions: {
				certificate: {
					description: [
						"Certificate used to communicate with Syslog server. Source certificate.local.name.",
					]
					type: "str"
				}
				custom_field_name: {
					description: [
						"Custom field name for CEF format logging.",
					]
					type: "list"
					suboptions: {
						custom: {
							description: [
								"Field custom name.",
							]
							type: "str"
						}
						id: {
							description: [
								"Entry ID.",
							]
							required: true
							type:     "int"
						}
						name: {
							description: [
								"Field name.",
							]
							type: "str"
						}
					}
				}
				enc_algorithm: {
					description: [
						"Enable/disable reliable syslogging with TLS encryption.",
					]
					type: "str"
					choices: [
						"high-medium",
						"high",
						"low",
						"disable",
					]
				}
				facility: {
					description: [
						"Remote syslog facility.",
					]
					type: "str"
					choices: [
						"kernel",
						"user",
						"mail",
						"daemon",
						"auth",
						"syslog",
						"lpr",
						"news",
						"uucp",
						"cron",
						"authpriv",
						"ftp",
						"ntp",
						"audit",
						"alert",
						"clock",
						"local0",
						"local1",
						"local2",
						"local3",
						"local4",
						"local5",
						"local6",
						"local7",
					]
				}
				format: {
					description: [
						"Log format.",
					]
					type: "str"
					choices: [
						"default",
						"csv",
						"cef",
					]
				}
				mode: {
					description: [
						"Remote syslog logging over UDP/Reliable TCP.",
					]
					type: "str"
					choices: [
						"udp",
						"legacy-reliable",
						"reliable",
					]
				}
				port: {
					description: [
						"Server listen port.",
					]
					type: "int"
				}
				server: {
					description: [
						"Address of remote syslog server.",
					]
					type: "str"
				}
				source_ip: {
					description: [
						"Source IP address of syslog.",
					]
					type: "str"
				}
				ssl_min_proto_version: {
					description: [
						"Minimum supported protocol version for SSL/TLS connections .",
					]
					type: "str"
					choices: [
						"default",
						"SSLv3",
						"TLSv1",
						"TLSv1-1",
						"TLSv1-2",
					]
				}
				status: {
					description: [
						"Enable/disable remote syslog logging.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
			}
		}
	}
}
