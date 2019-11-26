package ansible

module: fortios_vpn_certificate_setting: {
	module:            "fortios_vpn_certificate_setting"
	short_description: "VPN certificate setting in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify vpn_certificate feature and setting category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		vpn_certificate_setting: {
			description: [
				"VPN certificate setting.",
			]
			default: null
			type:    "dict"
			suboptions: {
				certname_dsa1024: {
					description: [
						"1024 bit DSA key certificate for re-signing server certificates for SSL inspection. Source vpn.certificate.local.name.",
					]
					type: "str"
				}
				certname_dsa2048: {
					description: [
						"2048 bit DSA key certificate for re-signing server certificates for SSL inspection. Source vpn.certificate.local.name.",
					]
					type: "str"
				}
				certname_ecdsa256: {
					description: [
						"256 bit ECDSA key certificate for re-signing server certificates for SSL inspection. Source vpn.certificate.local.name.",
					]
					type: "str"
				}
				certname_ecdsa384: {
					description: [
						"384 bit ECDSA key certificate for re-signing server certificates for SSL inspection. Source vpn.certificate.local.name.",
					]
					type: "str"
				}
				certname_rsa1024: {
					description: [
						"1024 bit RSA key certificate for re-signing server certificates for SSL inspection. Source vpn.certificate.local.name.",
					]
					type: "str"
				}
				certname_rsa2048: {
					description: [
						"2048 bit RSA key certificate for re-signing server certificates for SSL inspection. Source vpn.certificate.local.name.",
					]
					type: "str"
				}
				check_ca_cert: {
					description: [
						"Enable/disable verification of the user certificate and pass authentication if any CA in the chain is trusted .",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				check_ca_chain: {
					description: [
						"Enable/disable verification of the entire certificate chain and pass authentication only if the chain is complete and all of the CAs in the chain are trusted .",
					]

					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				cmp_save_extra_certs: {
					description: [
						"Enable/disable saving extra certificates in CMP mode.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				cn_match: {
					description: [
						"When searching for a matching certificate, control how to find matches in the cn attribute of the certificate subject name.",
					]
					type: "str"
					choices: [
						"substring",
						"value",
					]
				}
				ocsp_default_server: {
					description: [
						"Default OCSP server. Source vpn.certificate.ocsp-server.name.",
					]
					type: "str"
				}
				ocsp_status: {
					description: [
						"Enable/disable receiving certificates using the OCSP.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
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
				ssl_ocsp_option: {
					description: [
						"Specify whether the OCSP URL is from the certificate or the default OCSP server.",
					]
					type: "str"
					choices: [
						"certificate",
						"server",
					]
				}
				ssl_ocsp_status: {
					description: [
						"Enable/disable SSL OCSP.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				strict_crl_check: {
					description: [
						"Enable/disable strict mode CRL checking.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				strict_ocsp_check: {
					description: [
						"Enable/disable strict mode OCSP checking.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				subject_match: {
					description: [
						"When searching for a matching certificate, control how to find matches in the certificate subject name.",
					]
					type: "str"
					choices: [
						"substring",
						"value",
					]
				}
			}
		}
	}
}
