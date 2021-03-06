package ansible

module: fortios_firewall_ssl_ssh_profile: {
	module:            "fortios_firewall_ssl_ssh_profile"
	short_description: "Configure SSL/SSH protocol options in Fortinet's FortiOS and FortiGate."
	description: [
		"This module is able to configure a FortiGate or FortiOS (FOS) device by allowing the user to set and modify firewall feature and ssl_ssh_profile category. Examples include all parameters and values need to be adjusted to datasources before usage. Tested with FOS v6.0.5",
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
		firewall_ssl_ssh_profile: {
			description: [
				"Configure SSL/SSH protocol options.",
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
				caname: {
					description: [
						"CA certificate used by SSL Inspection. Source vpn.certificate.local.name.",
					]
					type: "str"
				}
				comment: {
					description: [
						"Optional comments.",
					]
					type: "str"
				}
				ftps: {
					description: [
						"Configure FTPS options.",
					]
					type: "dict"
					suboptions: {
						allow_invalid_server_cert: {
							description: [
								"When enabled, allows SSL sessions whose server certificate validation failed.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						client_cert_request: {
							description: [
								"Action based on client certificate request.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
						ports: {
							description: [
								"Ports to use for scanning (1 - 65535).",
							]
							type: "int"
						}
						status: {
							description: [
								"Configure protocol inspection status.",
							]
							type: "str"
							choices: [
								"disable",
								"deep-inspection",
							]
						}
						unsupported_ssl: {
							description: [
								"Action based on the SSL encryption used being unsupported.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
						untrusted_cert: {
							description: [
								"Allow, ignore, or block the untrusted SSL session server certificate.",
							]
							type: "str"
							choices: [
								"allow",
								"block",
								"ignore",
							]
						}
					}
				}
				https: {
					description: [
						"Configure HTTPS options.",
					]
					type: "dict"
					suboptions: {
						allow_invalid_server_cert: {
							description: [
								"When enabled, allows SSL sessions whose server certificate validation failed.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						client_cert_request: {
							description: [
								"Action based on client certificate request.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
						ports: {
							description: [
								"Ports to use for scanning (1 - 65535).",
							]
							type: "int"
						}
						status: {
							description: [
								"Configure protocol inspection status.",
							]
							type: "str"
							choices: [
								"disable",
								"certificate-inspection",
								"deep-inspection",
							]
						}
						unsupported_ssl: {
							description: [
								"Action based on the SSL encryption used being unsupported.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
						untrusted_cert: {
							description: [
								"Allow, ignore, or block the untrusted SSL session server certificate.",
							]
							type: "str"
							choices: [
								"allow",
								"block",
								"ignore",
							]
						}
					}
				}
				imaps: {
					description: [
						"Configure IMAPS options.",
					]
					type: "dict"
					suboptions: {
						allow_invalid_server_cert: {
							description: [
								"When enabled, allows SSL sessions whose server certificate validation failed.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						client_cert_request: {
							description: [
								"Action based on client certificate request.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
						ports: {
							description: [
								"Ports to use for scanning (1 - 65535).",
							]
							type: "int"
						}
						status: {
							description: [
								"Configure protocol inspection status.",
							]
							type: "str"
							choices: [
								"disable",
								"deep-inspection",
							]
						}
						unsupported_ssl: {
							description: [
								"Action based on the SSL encryption used being unsupported.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
						untrusted_cert: {
							description: [
								"Allow, ignore, or block the untrusted SSL session server certificate.",
							]
							type: "str"
							choices: [
								"allow",
								"block",
								"ignore",
							]
						}
					}
				}
				mapi_over_https: {
					description: [
						"Enable/disable inspection of MAPI over HTTPS.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				name: {
					description: [
						"Name.",
					]
					required: true
					type:     "str"
				}
				pop3s: {
					description: [
						"Configure POP3S options.",
					]
					type: "dict"
					suboptions: {
						allow_invalid_server_cert: {
							description: [
								"When enabled, allows SSL sessions whose server certificate validation failed.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						client_cert_request: {
							description: [
								"Action based on client certificate request.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
						ports: {
							description: [
								"Ports to use for scanning (1 - 65535).",
							]
							type: "int"
						}
						status: {
							description: [
								"Configure protocol inspection status.",
							]
							type: "str"
							choices: [
								"disable",
								"deep-inspection",
							]
						}
						unsupported_ssl: {
							description: [
								"Action based on the SSL encryption used being unsupported.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
						untrusted_cert: {
							description: [
								"Allow, ignore, or block the untrusted SSL session server certificate.",
							]
							type: "str"
							choices: [
								"allow",
								"block",
								"ignore",
							]
						}
					}
				}
				rpc_over_https: {
					description: [
						"Enable/disable inspection of RPC over HTTPS.",
					]
					type: "str"
					choices: [
						"enable",
						"disable",
					]
				}
				server_cert: {
					description: [
						"Certificate used by SSL Inspection to replace server certificate. Source vpn.certificate.local.name.",
					]
					type: "str"
				}
				server_cert_mode: {
					description: [
						"Re-sign or replace the server's certificate.",
					]
					type: "str"
					choices: [
						"re-sign",
						"replace",
					]
				}
				smtps: {
					description: [
						"Configure SMTPS options.",
					]
					type: "dict"
					suboptions: {
						allow_invalid_server_cert: {
							description: [
								"When enabled, allows SSL sessions whose server certificate validation failed.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						client_cert_request: {
							description: [
								"Action based on client certificate request.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
						ports: {
							description: [
								"Ports to use for scanning (1 - 65535).",
							]
							type: "int"
						}
						status: {
							description: [
								"Configure protocol inspection status.",
							]
							type: "str"
							choices: [
								"disable",
								"deep-inspection",
							]
						}
						unsupported_ssl: {
							description: [
								"Action based on the SSL encryption used being unsupported.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
						untrusted_cert: {
							description: [
								"Allow, ignore, or block the untrusted SSL session server certificate.",
							]
							type: "str"
							choices: [
								"allow",
								"block",
								"ignore",
							]
						}
					}
				}
				ssh: {
					description: [
						"Configure SSH options.",
					]
					type: "dict"
					suboptions: {
						inspect_all: {
							description: [
								"Level of SSL inspection.",
							]
							type: "str"
							choices: [
								"disable",
								"deep-inspection",
							]
						}
						ports: {
							description: [
								"Ports to use for scanning (1 - 65535).",
							]
							type: "int"
						}
						ssh_algorithm: {
							description: [
								"Relative strength of encryption algorithms accepted during negotiation.",
							]
							type: "str"
							choices: [
								"compatible",
								"high-encryption",
							]
						}
						ssh_policy_check: {
							description: [
								"Enable/disable SSH policy check.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						ssh_tun_policy_check: {
							description: [
								"Enable/disable SSH tunnel policy check.",
							]
							type: "str"
							choices: [
								"disable",
								"enable",
							]
						}
						status: {
							description: [
								"Configure protocol inspection status.",
							]
							type: "str"
							choices: [
								"disable",
								"deep-inspection",
							]
						}
						unsupported_version: {
							description: [
								"Action based on SSH version being unsupported.",
							]
							type: "str"
							choices: [
								"bypass",
								"block",
							]
						}
					}
				}
				ssl: {
					description: [
						"Configure SSL options.",
					]
					type: "dict"
					suboptions: {
						allow_invalid_server_cert: {
							description: [
								"When enabled, allows SSL sessions whose server certificate validation failed.",
							]
							type: "str"
							choices: [
								"enable",
								"disable",
							]
						}
						client_cert_request: {
							description: [
								"Action based on client certificate request.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
						inspect_all: {
							description: [
								"Level of SSL inspection.",
							]
							type: "str"
							choices: [
								"disable",
								"certificate-inspection",
								"deep-inspection",
							]
						}
						unsupported_ssl: {
							description: [
								"Action based on the SSL encryption used being unsupported.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
						untrusted_cert: {
							description: [
								"Allow, ignore, or block the untrusted SSL session server certificate.",
							]
							type: "str"
							choices: [
								"allow",
								"block",
								"ignore",
							]
						}
					}
				}
				ssl_anomalies_log: {
					description: [
						"Enable/disable logging SSL anomalies.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				ssl_exempt: {
					description: [
						"Servers to exempt from SSL inspection.",
					]
					type: "list"
					suboptions: {
						address: {
							description: [
								"IPv4 address object. Source firewall.address.name firewall.addrgrp.name.",
							]
							type: "str"
						}
						address6: {
							description: [
								"IPv6 address object. Source firewall.address6.name firewall.addrgrp6.name.",
							]
							type: "str"
						}
						fortiguard_category: {
							description: [
								"FortiGuard category ID.",
							]
							type: "int"
						}
						id: {
							description: [
								"ID number.",
							]
							required: true
							type:     "int"
						}
						regex: {
							description: [
								"Exempt servers by regular expression.",
							]
							type: "str"
						}
						type: {
							description: [
								"Type of address object (IPv4 or IPv6) or FortiGuard category.",
							]
							type: "str"
							choices: [
								"fortiguard-category",
								"address",
								"address6",
								"wildcard-fqdn",
								"regex",
							]
						}
						wildcard_fqdn: {
							description: [
								"Exempt servers by wildcard FQDN. Source firewall.wildcard-fqdn.custom.name firewall.wildcard-fqdn.group.name.",
							]
							type: "str"
						}
					}
				}
				ssl_exemptions_log: {
					description: [
						"Enable/disable logging SSL exemptions.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				ssl_server: {
					description: [
						"SSL servers.",
					]
					type: "list"
					suboptions: {
						ftps_client_cert_request: {
							description: [
								"Action based on client certificate request during the FTPS handshake.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
						https_client_cert_request: {
							description: [
								"Action based on client certificate request during the HTTPS handshake.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
						id: {
							description: [
								"SSL server ID.",
							]
							required: true
							type:     "int"
						}
						imaps_client_cert_request: {
							description: [
								"Action based on client certificate request during the IMAPS handshake.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
						ip: {
							description: [
								"IPv4 address of the SSL server.",
							]
							type: "str"
						}
						pop3s_client_cert_request: {
							description: [
								"Action based on client certificate request during the POP3S handshake.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
						smtps_client_cert_request: {
							description: [
								"Action based on client certificate request during the SMTPS handshake.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
						ssl_other_client_cert_request: {
							description: [
								"Action based on client certificate request during an SSL protocol handshake.",
							]
							type: "str"
							choices: [
								"bypass",
								"inspect",
								"block",
							]
						}
					}
				}
				untrusted_caname: {
					description: [
						"Untrusted CA certificate used by SSL Inspection. Source vpn.certificate.local.name.",
					]
					type: "str"
				}
				use_ssl_server: {
					description: [
						"Enable/disable the use of SSL server table for SSL offloading.",
					]
					type: "str"
					choices: [
						"disable",
						"enable",
					]
				}
				whitelist: {
					description: [
						"Enable/disable exempting servers by FortiGuard whitelist.",
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
