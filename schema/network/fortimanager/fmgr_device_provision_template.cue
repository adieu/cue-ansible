package ansible

module: fmgr_device_provision_template: {
	module:        "fmgr_device_provision_template"
	version_added: "2.8"
	notes: [
		"Full Documentation at U(https://ftnt-ansible-docs.readthedocs.io/en/latest/).",
	]
	author: [
		"Luke Weighall (@lweighall)",
		"Andrew Welsh (@Ghilli3)",
		"Jim Huber (@p4r4n0y1ng)",
	]
	short_description: "Manages Device Provisioning Templates in FortiManager."
	description: [
		"Allows the editing and assignment of device provisioning templates in FortiManager.",
	]

	options: {
		adom: {
			description: [
				"The ADOM the configuration should belong to.",
			]
			required: true
		}

		mode: {
			description: [
				"Sets one of three modes for managing the object.",
				"Allows use of soft-adds instead of overwriting existing values.",
			]
			choices: ["add", "set", "delete", "update"]
			required: false
			default:  "add"
		}

		device_unique_name: {
			description: [
				"The unique device's name that you are editing.",
			]
			required: true
		}

		provisioning_template: {
			description: [
				"The provisioning template you want to apply (default = default).",
			]
			required: true
		}

		provision_targets: {
			description: [
				"The friendly names of devices in FortiManager to assign the provisioning template to. CSV separated list.",
			]
			required: true
		}

		snmp_status: {
			description: [
				"Enables or disables SNMP globally.",
			]
			required: false
			choices: ["enable", "disable"]
		}

		snmp_v2c_query_port: {
			description: [
				"Sets the snmp v2c community query port.",
			]
			required: false
		}

		snmp_v2c_trap_port: {
			description: [
				"Sets the snmp v2c community trap port.",
			]
			required: false
		}

		snmp_v2c_status: {
			description: [
				"Enables or disables the v2c community specified.",
			]
			required: false
			choices: ["enable", "disable"]
		}

		snmp_v2c_trap_status: {
			description: [
				"Enables or disables the v2c community specified for traps.",
			]
			required: false
			choices: ["enable", "disable"]
		}

		snmp_v2c_query_status: {
			description: [
				"Enables or disables the v2c community specified for queries.",
			]
			required: false
			choices: ["enable", "disable"]
		}

		snmp_v2c_name: {
			description: [
				"Specifies the v2c community name.",
			]
			required: false
		}

		snmp_v2c_id: {
			description: [
				"Primary key for the snmp community. this must be unique!",
			]
			required: false
		}

		snmp_v2c_trap_src_ipv4: {
			description: [
				"Source ip the traps should come from IPv4.",
			]
			required: false
		}

		snmp_v2c_trap_hosts_ipv4: {
			description: """
		- IPv4 addresses of the hosts that should get SNMP v2c traps, comma separated, must include mask (\"10.7.220.59 255.255.255.255, 10.7.220.60 255.255.255.255\").

		"""

			required: false
		}

		snmp_v2c_query_hosts_ipv4: {
			description: """
		- IPv4 addresses or subnets that are allowed to query SNMP v2c, comma separated (\"10.7.220.59 255.255.255.0, 10.7.220.0 255.255.255.0\").

		"""

			required: false
		}

		snmpv3_auth_proto: {
			description: [
				"SNMPv3 auth protocol.",
			]
			required: false
			choices: ["md5", "sha"]
		}

		snmpv3_auth_pwd: {
			description: [
				"SNMPv3 auth pwd __ currently not encrypted! ensure this file is locked down permissions wise!",
			]
			required: false
		}

		snmpv3_name: {
			description: [
				"SNMPv3 user name.",
			]
			required: false
		}

		snmpv3_notify_hosts: {
			description: [
				"List of ipv4 hosts to send snmpv3 traps to. Comma separated IPv4 list.",
			]
			required: false
		}

		snmpv3_priv_proto: {
			description: [
				"SNMPv3 priv protocol.",
			]
			required: false
			choices: ["aes", "des", "aes256", "aes256cisco"]
		}

		snmpv3_priv_pwd: {
			description: [
				"SNMPv3 priv pwd currently not encrypted! ensure this file is locked down permissions wise!",
			]
			required: false
		}

		snmpv3_queries: {
			description: [
				"Allow snmpv3_queries.",
			]
			required: false
			choices: ["enable", "disable"]
		}

		snmpv3_query_port: {
			description: [
				"SNMPv3 query port.",
			]
			required: false
		}

		snmpv3_security_level: {
			description: [
				"SNMPv3 security level.",
			]
			required: false
			choices: ["no-auth-no-priv", "auth-no-priv", "auth-priv"]
		}

		snmpv3_source_ip: {
			description: [
				"SNMPv3 source ipv4 address for traps.",
			]
			required: false
		}

		snmpv3_status: {
			description: [
				"SNMPv3 user is enabled or disabled.",
			]
			required: false
			choices: ["enable", "disable"]
		}

		snmpv3_trap_rport: {
			description: [
				"SNMPv3 trap remote port.",
			]
			required: false
		}

		snmpv3_trap_status: {
			description: [
				"SNMPv3 traps is enabled or disabled.",
			]
			required: false
			choices: ["enable", "disable"]
		}

		syslog_port: {
			description: [
				"Syslog port that will be set.",
			]
			required: false
		}

		syslog_server: {
			description: [
				"Server the syslogs will be sent to.",
			]
			required: false
		}

		syslog_status: {
			description: [
				"Enables or disables syslogs.",
			]
			required: false
			choices: ["enable", "disable"]
		}

		syslog_mode: {
			description: [
				"Remote syslog logging over UDP/Reliable TCP.",
				"choice | udp | Enable syslogging over UDP.",
				"choice | legacy-reliable | Enable legacy reliable syslogging by RFC3195 (Reliable Delivery for Syslog).",
				"choice | reliable | Enable reliable syslogging by RFC6587 (Transmission of Syslog Messages over TCP).",
			]
			required: false
			choices: ["udp", "legacy-reliable", "reliable"]
			default: "udp"
		}

		syslog_filter: {
			description: [
				"Sets the logging level for syslog.",
			]
			required: false
			choices: ["emergency", "alert", "critical", "error", "warning", "notification", "information", "debug"]
		}

		syslog_facility: {
			description: [
				"Remote syslog facility.",
				"choice | kernel | Kernel messages.",
				"choice | user | Random user-level messages.",
				"choice | mail | Mail system.",
				"choice | daemon | System daemons.",
				"choice | auth | Security/authorization messages.",
				"choice | syslog | Messages generated internally by syslog.",
				"choice | lpr | Line printer subsystem.",
				"choice | news | Network news subsystem.",
				"choice | uucp | Network news subsystem.",
				"choice | cron | Clock daemon.",
				"choice | authpriv | Security/authorization messages (private).",
				"choice | ftp | FTP daemon.",
				"choice | ntp | NTP daemon.",
				"choice | audit | Log audit.",
				"choice | alert | Log alert.",
				"choice | clock | Clock daemon.",
				"choice | local0 | Reserved for local use.",
				"choice | local1 | Reserved for local use.",
				"choice | local2 | Reserved for local use.",
				"choice | local3 | Reserved for local use.",
				"choice | local4 | Reserved for local use.",
				"choice | local5 | Reserved for local use.",
				"choice | local6 | Reserved for local use.",
				"choice | local7 | Reserved for local use.",
			]
			required: false
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
			default: "syslog"
		}

		syslog_enc_algorithm: {
			description: [
				"Enable/disable reliable syslogging with TLS encryption.",
				"choice | high | SSL communication with high encryption algorithms.",
				"choice | low | SSL communication with low encryption algorithms.",
				"choice | disable | Disable SSL communication.",
				"choice | high-medium | SSL communication with high and medium encryption algorithms.",
			]
			required: false
			choices: ["high", "low", "disable", "high-medium"]
			default: "disable"
		}

		syslog_certificate: {
			description: [
				"Certificate used to communicate with Syslog server if encryption on.",
			]
			required: false
		}

		ntp_status: {
			description: [
				"Enables or disables ntp.",
			]
			required: false
			choices: ["enable", "disable"]
		}

		ntp_sync_interval: {
			description: [
				"Sets the interval in minutes for ntp sync.",
			]
			required: false
		}

		ntp_type: {
			description: [
				"Enables fortiguard servers or custom servers are the ntp source.",
			]
			required: false
			choices: ["fortiguard", "custom"]
		}

		ntp_server: {
			description: [
				"Only used with custom ntp_type -- specifies IP of server to sync to -- comma separated ip addresses for multiples.",
			]
			required: false
		}

		ntp_auth: {
			description: [
				"Enables or disables ntp authentication.",
			]
			required: false
			choices: ["enable", "disable"]
		}

		ntp_auth_pwd: {
			description: [
				"Sets the ntp auth password.",
			]
			required: false
		}

		ntp_v3: {
			description: [
				"Enables or disables ntpv3 (default is ntpv4).",
			]
			required: false
			choices: ["enable", "disable"]
		}

		admin_https_redirect: {
			description: [
				"Enables or disables https redirect from http.",
			]
			required: false
			choices: ["enable", "disable"]
		}

		admin_https_port: {
			description: [
				"SSL admin gui port number.",
			]
			required: false
		}

		admin_http_port: {
			description: [
				"Non-SSL admin gui port number.",
			]
			required: false
		}

		admin_timeout: {
			description: [
				"Admin timeout in minutes.",
			]
			required: false
		}

		admin_language: {
			description: [
				"Sets the admin gui language.",
			]
			required: false
			choices: ["english", "simch", "japanese", "korean", "spanish", "trach", "french", "portuguese"]
		}

		admin_switch_controller: {
			description: [
				"Enables or disables the switch controller.",
			]
			required: false
			choices: ["enable", "disable"]
		}

		admin_gui_theme: {
			description: [
				"Changes the admin gui theme.",
			]
			required: false
			choices: ["green", "red", "blue", "melongene", "mariner"]
		}

		admin_enable_fortiguard: {
			description: [
				"Enables FortiGuard security updates to their default settings.",
			]
			required: false
			choices: ["none", "direct", "this-fmg"]
		}

		admin_fortianalyzer_target: {
			description: [
				"Configures faz target.",
			]
			required: false
		}

		admin_fortiguard_target: {
			description: [
				"Configures fortiguard target.",
				"admin_enable_fortiguard must be set to \"direct\".",
			]
			required: false
		}

		smtp_username: {
			description: [
				"SMTP auth username.",
			]
			required: false
		}

		smtp_password: {
			description: [
				"SMTP password.",
			]
			required: false
		}

		smtp_port: {
			description: [
				"SMTP port number.",
			]
			required: false
		}

		smtp_replyto: {
			description: [
				"SMTP reply to address.",
			]
			required: false
		}

		smtp_conn_sec: {
			description: [
				"defines the ssl level for smtp.",
			]
			required: false
			choices: ["none", "starttls", "smtps"]
		}

		smtp_server: {
			description: [
				"SMTP server ipv4 address.",
			]
			required: false
		}

		smtp_source_ipv4: {
			description: [
				"SMTP source ip address.",
			]
			required: false
		}

		smtp_validate_cert: {
			description: [
				"Enables or disables valid certificate checking for smtp.",
			]
			required: false
			choices: ["enable", "disable"]
		}

		dns_suffix: {
			description: [
				"Sets the local dns domain suffix.",
			]
			required: false
		}

		dns_primary_ipv4: {
			description: [
				"primary ipv4 dns forwarder.",
			]
			required: false
		}

		dns_secondary_ipv4: {
			description: [
				"secondary ipv4 dns forwarder.",
			]
			required: false
		}

		delete_provisioning_template: {
			description: [
				"If specified, all other options are ignored. The specified provisioning template will be deleted.",
			]
			required: false
		}
	}
}
