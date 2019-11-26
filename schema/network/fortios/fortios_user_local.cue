package ansible

module: fortios_user_local: {
	module:            "fortios_user_local"
	short_description: "Configure local users in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify user feature and local category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		state: {
			description: [
				"Indicates whether to create or remove the object.",
			]
			type:     "str"
			required: true
			choices: [
				"present",
				"absent",
			]
		}
		user_local: {
			description: [
				"Configure local users.",
			]
			default: null
			type:    "dict"
			suboptions: {
				auth_concurrent_override: {
					description: [
						"Enable/disable overriding the policy-auth-concurrent under config system global.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				auth_concurrent_value: {
					description: [
						"Maximum number of concurrent logins permitted from the same user.",
					]
					type: "int"
				}
				authtimeout: {
					description: [
						"Time in minutes before the authentication timeout for a user is reached.",
					]
					type: "int"
				}
				email_to: {
					description: [
						"Two-factor recipient's email address.",
					]
					type: "str"
				}
				fortitoken: {
					description: [
						"Two-factor recipient's FortiToken serial number. Source user.fortitoken.serial-number.",
					]
					type: "str"
				}
				id: {
					description: [
						"User ID.",
					]
					type: "int"
				}
				ldap_server: {
					description: [
						"Name of LDAP server with which the user must authenticate. Source user.ldap.name.",
					]
					type: "str"
				}
				name: {
					description: [
						"User name.",
					]
					required: true
					type:     "str"
				}
				passwd: {
					description: [
						"User's password.",
					]
					type: "str"
				}
				passwd_policy: {
					description: [
						"Password policy to apply to this user, as defined in config user password-policy. Source user.password-policy.name.",
					]
					type: "str"
				}
				passwd_time: {
					description: [
						"Time of the last password update.",
					]
					type: "str"
				}
				ppk_identity: {
					description: [
						"IKEv2 Postquantum Preshared Key Identity.",
					]
					type: "str"
				}
				ppk_secret: {
					description: [
						"IKEv2 Postquantum Preshared Key (ASCII string or hexadecimal encoded with a leading 0x).",
					]
					type: "str"
				}
				radius_server: {
					description: [
						"Name of RADIUS server with which the user must authenticate. Source user.radius.name.",
					]
					type: "str"
				}
				sms_custom_server: {
					description: [
						"Two-factor recipient's SMS server. Source system.sms-server.name.",
					]
					type: "str"
				}
				sms_phone: {
					description: [
						"Two-factor recipient's mobile phone number.",
					]
					type: "str"
				}
				sms_server: {
					description: [
						"Send SMS through FortiGuard or other external server.",
					]
					type: "str"
					choices: [
						"fortiguard",
						"custom",
					]
				}
				status: {
					description: [
						"Enable/disable allowing the local user to authenticate with the FortiGate unit.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				two_factor: {
					description: [
						"Enable/disable two-factor authentication.",
					]
					type: "str"
					choices: [
						"disable",
						"fortitoken",
						"email",
						"sms",
					]
				}
				type: {
					description: [
						"Authentication method.",
					]
					type: "str"
					choices: [
						"password",
						"radius",
						"tacacs+",
						"ldap",
					]
				}
				workstation: {
					description: [
						"Name of the remote user workstation, if you want to limit the user to authenticate only from a particular workstation.",
					]
					type: "str"
				}
			}
		}
	}
}
