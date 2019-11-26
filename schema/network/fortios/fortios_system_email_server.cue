package ansible

module: fortios_system_email_server: {
	module:            "fortios_system_email_server"
	short_description: "Configure the email server used by the FortiGate various things. For example, for sending email messages to users to support user authentication features in Fortinet's FortiOS and FortiGate."

	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify system feature and email_server category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
	]

	version_added: "2.9"
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
			type:    "bool"
			default: true
		}
		system_email_server: {
			description: [
				"Configure the email server used by the FortiGate various things. For example, for sending email messages to users to support user authentication features.",
			]

			default: null
			type:    "dict"
			suboptions: {
				authenticate: {
					description: [
						"Enable/disable authentication.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				password: {
					description: [
						"SMTP server user password for authentication.",
					]
					type: "str"
				}
				port: {
					description: [
						"SMTP server port.",
					]
					type: "int"
				}
				reply_to: {
					description: [
						"Reply-To email address.",
					]
					type: "str"
				}
				security: {
					description: [
						"Connection security used by the email server.",
					]
					type: "str"
					choices: [
						"none",
						"starttls",
						"smtps",
					]
				}
				server: {
					description: [
						"SMTP server IP address or hostname.",
					]
					type: "str"
				}
				source_ip: {
					description: [
						"SMTP server IPv4 source IP.",
					]
					type: "str"
				}
				source_ip6: {
					description: [
						"SMTP server IPv6 source IP.",
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
				type: {
					description: [
						"Use FortiGuard Message service or custom email server.",
					]
					type: "str"
					choices: [
						"custom",
					]
				}
				username: {
					description: [
						"SMTP server user name for authentication.",
					]
					type: "str"
				}
				validate_server: {
					description: [
						"Enable/disable validation of server certificate.",
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
