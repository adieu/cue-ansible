package ansible

module: fortios_user_peer: {
	module:            "fortios_user_peer"
	short_description: "Configure peer users in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify user feature and peer category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		user_peer: {
			description: [
				"Configure peer users.",
			]
			default: null
			type:    "dict"
			suboptions: {
				ca: {
					description: [
						"Name of the CA certificate as returned by the execute vpn certificate ca list command. Source vpn.certificate.ca.name.",
					]
					type: "str"
				}
				cn: {
					description: [
						"Peer certificate common name.",
					]
					type: "str"
				}
				cn_type: {
					description: [
						"Peer certificate common name type.",
					]
					type: "str"
					choices: [
						"string",
						"email",
						"FQDN",
						"ipv4",
						"ipv6",
					]
				}
				ldap_mode: {
					description: [
						"Mode for LDAP peer authentication.",
					]
					type: "str"
					choices: [
						"password",
						"principal-name",
					]
				}
				ldap_password: {
					description: [
						"Password for LDAP server bind.",
					]
					type: "str"
				}
				ldap_server: {
					description: [
						"Name of an LDAP server defined under the user ldap command. Performs client access rights check. Source user.ldap.name.",
					]
					type: "str"
				}
				ldap_username: {
					description: [
						"Username for LDAP server bind.",
					]
					type: "str"
				}
				mandatory_ca_verify: {
					description: [
						"Determine what happens to the peer if the CA certificate is not installed. Disable to automatically consider the peer certificate as valid.",
					]

					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				name: {
					description: [
						"Peer name.",
					]
					required: true
					type:     "str"
				}
				ocsp_override_server: {
					description: [
						"Online Certificate Status Protocol (OCSP) server for certificate retrieval. Source vpn.certificate.ocsp-server.name.",
					]
					type: "str"
				}
				passwd: {
					description: [
						"Peer's password used for two-factor authentication.",
					]
					type: "str"
				}
				subject: {
					description: [
						"Peer certificate name constraints.",
					]
					type: "str"
				}
				two_factor: {
					description: [
						"Enable/disable two-factor authentication, applying certificate and password-based authentication.",
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
