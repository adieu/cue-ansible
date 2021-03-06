package ansible

module: fortios_authentication_setting: {
	module:            "fortios_authentication_setting"
	short_description: "Configure authentication setting in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify authentication feature and setting category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		authentication_setting: {
			description: [
				"Configure authentication setting.",
			]
			default: null
			type:    "dict"
			suboptions: {
				active_auth_scheme: {
					description: [
						"Active authentication method (scheme name). Source authentication.scheme.name.",
					]
					type: "str"
				}
				captive_portal: {
					description: [
						"Captive portal host name. Source firewall.address.name.",
					]
					type: "str"
				}
				captive_portal_ip: {
					description: [
						"Captive portal IP address.",
					]
					type: "str"
				}
				captive_portal_ip6: {
					description: [
						"Captive portal IPv6 address.",
					]
					type: "str"
				}
				captive_portal_port: {
					description: [
						"Captive portal port number (1 - 65535).",
					]
					type: "int"
				}
				captive_portal_type: {
					description: [
						"Captive portal type.",
					]
					type: "str"
					choices: [
						"fqdn",
						"ip",
					]
				}
				captive_portal6: {
					description: [
						"IPv6 captive portal host name. Source firewall.address6.name.",
					]
					type: "str"
				}
				sso_auth_scheme: {
					description: [
						"Single-Sign-On authentication method (scheme name). Source authentication.scheme.name.",
					]
					type: "str"
				}
			}
		}
	}
}
