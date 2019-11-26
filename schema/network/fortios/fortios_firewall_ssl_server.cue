package ansible

module: fortios_firewall_ssl_server: {
	module:            "fortios_firewall_ssl_server"
	short_description: "Configure SSL servers in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall feature and ssl_server category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		firewall_ssl_server: {
			description: [
				"Configure SSL servers.",
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
				add_header_x_forwarded_proto: {
					description: [
						"Enable/disable adding an X-Forwarded-Proto header to forwarded requests.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				ip: {
					description: [
						"IPv4 address of the SSL server.",
					]
					type: "str"
				}
				mapped_port: {
					description: [
						"Mapped server service port (1 - 65535).",
					]
					type: "int"
				}
				name: {
					description: [
						"Server name.",
					]
					required: true
					type:     "str"
				}
				port: {
					description: [
						"Server service port (1 - 65535).",
					]
					type: "int"
				}
				ssl_algorithm: {
					description: [
						"Relative strength of encryption algorithms accepted in negotiation.",
					]
					type: "str"
					choices: [
						"high",
						"medium",
						"low",
					]
				}
				ssl_cert: {
					description: [
						"Name of certificate for SSL connections to this server. Source vpn.certificate.local.name.",
					]
					type: "str"
				}
				ssl_client_renegotiation: {
					description: [
						"Allow or block client renegotiation by server.",
					]
					type: "str"
					choices: [
						"allow",
						"deny",
						"secure",
					]
				}
				ssl_dh_bits: {
					description: [
						"Bit-size of Diffie-Hellman (DH) prime used in DHE-RSA negotiation.",
					]
					type: "str"
					choices: [
						768,
						1024,
						1536,
						2048,
					]
				}
				ssl_max_version: {
					description: [
						"Highest SSL/TLS version to negotiate.",
					]
					type: "str"
					choices: [
						"tls-1.0",
						"tls-1.1",
						"tls-1.2",
					]
				}
				ssl_min_version: {
					description: [
						"Lowest SSL/TLS version to negotiate.",
					]
					type: "str"
					choices: [
						"tls-1.0",
						"tls-1.1",
						"tls-1.2",
					]
				}
				ssl_mode: {
					description: [
						"SSL/TLS mode for encryption and decryption of traffic.",
					]
					type: "str"
					choices: [
						"half",
						"full",
					]
				}
				ssl_send_empty_frags: {
					description: [
						"Enable/disable sending empty fragments to avoid attack on CBC IV.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				url_rewrite: {
					description: [
						"Enable/disable rewriting the URL.",
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
