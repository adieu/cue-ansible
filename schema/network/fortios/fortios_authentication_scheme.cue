package ansible

module: fortios_authentication_scheme: {
	module:            "fortios_authentication_scheme"
	short_description: "Configure Authentication Schemes in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify authentication feature and scheme category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		state: {
			description: [
				"Indicates whether to create or remove the object. This attribute was present already in previous version in a deeper level. It has been moved out to this outer level.",
			]

			type:     "str"
			required: false
			choices: [
				"present",
				"absent",
			]
			version_added: 2.9
		}
		authentication_scheme: {
			description: [
				"Configure Authentication Schemes.",
			]
			default: null
			type:    "dict"
			suboptions: {
				state: {
					description: [
						"B(Deprecated)",
						"Starting with Ansible 2.9 we recommend using the top-level 'state' parameter.",
						"HORIZONTALLINE",
						"Indicates whether to create or remove the object.",
					]
					type:     "str"
					required: false
					choices: [
						"present",
						"absent",
					]
				}
				domain_controller: {
					description: [
						"Domain controller setting. Source user.domain-controller.name.",
					]
					type: "str"
				}
				fsso_agent_for_ntlm: {
					description: [
						"FSSO agent to use for NTLM authentication. Source user.fsso.name.",
					]
					type: "str"
				}
				fsso_guest: {
					description: [
						"Enable/disable user fsso-guest authentication .",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				kerberos_keytab: {
					description: [
						"Kerberos keytab setting. Source user.krb-keytab.name.",
					]
					type: "str"
				}
				method: {
					description: [
						"Authentication methods .",
					]
					type: "str"
					choices: [
						"ntlm",
						"basic",
						"digest",
						"form",
						"negotiate",
						"fsso",
						"rsso",
						"ssh-publickey",
					]
				}
				name: {
					description: [
						"Authentication scheme name.",
					]
					required: true
					type:     "str"
				}
				negotiate_ntlm: {
					description: [
						"Enable/disable negotiate authentication for NTLM .",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				require_tfa: {
					description: [
						"Enable/disable two-factor authentication .",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ssh_ca: {
					description: [
						"SSH CA name. Source firewall.ssh.local-ca.name.",
					]
					type: "str"
				}
				user_database: {
					description: [
						"Authentication server to contain user information; \"local\" (default) or \"123\" (for LDAP).",
					]
					type: "list"
					suboptions: name: {
						description: [
							"Authentication server name. Source system.datasource.name user.radius.name user.tacacs+.name user.ldap.name user.group.name.",
						]
						required: true
						type:     "str"
					}
				}
			}
		}
	}
}
