package ansible

module: fortios_vpn_certificate_local: {
	module:            "fortios_vpn_certificate_local"
	short_description: "Local keys and certificates in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify vpn_certificate feature and local category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		vpn_certificate_local: {
			description: [
				"Local keys and certificates.",
			]
			default: null
			type:    "dict"
			suboptions: {
				auto_regenerate_days: {
					description: [
						"Number of days to wait before expiry of an updated local certificate is requested (0 = disabled).",
					]
					type: "int"
				}
				auto_regenerate_days_warning: {
					description: [
						"Number of days to wait before an expiry warning message is generated (0 = disabled).",
					]
					type: "int"
				}
				ca_identifier: {
					description: [
						"CA identifier of the CA server for signing via SCEP.",
					]
					type: "str"
				}
				certificate: {
					description: [
						"PEM format certificate.",
					]
					type: "str"
				}
				cmp_path: {
					description: [
						"Path location inside CMP server.",
					]
					type: "str"
				}
				cmp_regeneration_method: {
					description: [
						"CMP auto-regeneration method.",
					]
					type: "str"
					choices: [
						"keyupate",
						"renewal",
					]
				}
				cmp_server: {
					description: [
						"'ADDRESS:PORT' for CMP server.",
					]
					type: "str"
				}
				cmp_server_cert: {
					description: [
						"CMP server certificate. Source vpn.certificate.ca.name.",
					]
					type: "str"
				}
				comments: {
					description: [
						"Comment.",
					]
					type: "str"
				}
				csr: {
					description: [
						"Certificate Signing Request.",
					]
					type: "str"
				}
				enroll_protocol: {
					description: [
						"Certificate enrollment protocol.",
					]
					type: "str"
					choices: [
						"none",
						"scep",
						"cmpv2",
					]
				}
				ike_localid: {
					description: [
						"Local ID the FortiGate uses for authentication as a VPN client.",
					]
					type: "str"
				}
				ike_localid_type: {
					description: [
						"IKE local ID type.",
					]
					type: "str"
					choices: [
						"asn1dn",
						"fqdn",
					]
				}
				last_updated: {
					description: [
						"Time at which certificate was last updated.",
					]
					type: "int"
				}
				name: {
					description: [
						"Name.",
					]
					required: true
					type:     "str"
				}
				name_encoding: {
					description: [
						"Name encoding method for auto-regeneration.",
					]
					type: "str"
					choices: [
						"printable",
						"utf8",
					]
				}
				password: {
					description: [
						"Password as a PEM file.",
					]
					type: "str"
				}
				private_key: {
					description: [
						"PEM format key, encrypted with a password.",
					]
					type: "str"
				}
				range: {
					description: [
						"Either a global or VDOM IP address range for the certificate.",
					]
					type: "str"
					choices: [
						"global",
						"vdom",
					]
				}
				scep_password: {
					description: [
						"SCEP server challenge password for auto-regeneration.",
					]
					type: "str"
				}
				scep_url: {
					description: [
						"SCEP server URL.",
					]
					type: "str"
				}
				source: {
					description: [
						"Certificate source type.",
					]
					type: "str"
					choices: [
						"factory",
						"user",
						"bundle",
					]
				}
				source_ip: {
					description: [
						"Source IP address for communications to the SCEP server.",
					]
					type: "str"
				}
				state: {
					description: [
						"Certificate Signing Request State.",
					]
					type: "str"
				}
			}
		}
	}
}
