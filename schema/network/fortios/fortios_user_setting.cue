package ansible

module: fortios_user_setting: {
	module:            "fortios_user_setting"
	short_description: "Configure user authentication setting in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify user feature and setting category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		user_setting: {
			description: [
				"Configure user authentication setting.",
			]
			default: null
			type:    "dict"
			suboptions: {
				auth_blackout_time: {
					description: [
						"Time in seconds an IP address is denied access after failing to authenticate five times within one minute.",
					]
					type: "int"
				}
				auth_ca_cert: {
					description: [
						"HTTPS CA certificate for policy authentication. Source vpn.certificate.local.name.",
					]
					type: "str"
				}
				auth_cert: {
					description: [
						"HTTPS server certificate for policy authentication. Source vpn.certificate.local.name.",
					]
					type: "str"
				}
				auth_http_basic: {
					description: [
						"Enable/disable use of HTTP basic authentication for identity-based firewall policies.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				auth_invalid_max: {
					description: [
						"Maximum number of failed authentication attempts before the user is blocked.",
					]
					type: "int"
				}
				auth_lockout_duration: {
					description: [
						"Lockout period in seconds after too many login failures.",
					]
					type: "int"
				}
				auth_lockout_threshold: {
					description: [
						"Maximum number of failed login attempts before login lockout is triggered.",
					]
					type: "int"
				}
				auth_portal_timeout: {
					description: [
						"Time in minutes before captive portal user have to re-authenticate (1 - 30 min).",
					]
					type: "int"
				}
				auth_ports: {
					description: [
						"Set up non-standard ports for authentication with HTTP, HTTPS, FTP, and TELNET.",
					]
					type: "list"
					suboptions: {
						id: {
							description: [
								"ID.",
							]
							required: true
							type:     "int"
						}
						port: {
							description: [
								"Non-standard port for firewall user authentication.",
							]
							type: "int"
						}
						type: {
							description: [
								"Service type.",
							]
							type: "str"
							choices: [
								"http",
								"https",
								"ftp",
								"telnet",
							]
						}
					}
				}
				auth_secure_http: {
					description: [
						"Enable/disable redirecting HTTP user authentication to more secure HTTPS.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				auth_src_mac: {
					description: [
						"Enable/disable source MAC for user identity.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				auth_ssl_allow_renegotiation: {
					description: [
						"Allow/forbid SSL re-negotiation for HTTPS authentication.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				auth_timeout: {
					description: [
						"Time in minutes before the firewall user authentication timeout requires the user to re-authenticate.",
					]
					type: "int"
				}
				auth_timeout_type: {
					description: [
						"Control if authenticated users have to login again after a hard timeout, after an idle timeout, or after a session timeout.",
					]
					type: "str"
					choices: [
						"idle-timeout",
						"hard-timeout",
						"new-session",
					]
				}
				auth_type: {
					description: [
						"Supported firewall policy authentication protocols/methods.",
					]
					type: "str"
					choices: [
						"http",
						"https",
						"ftp",
						"telnet",
					]
				}
				radius_ses_timeout_act: {
					description: [
						"Set the RADIUS session timeout to a hard timeout or to ignore RADIUS server session timeouts.",
					]
					type: "str"
					choices: [
						"hard-timeout",
						"ignore-timeout",
					]
				}
			}
		}
	}
}
