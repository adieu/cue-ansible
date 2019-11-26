package ansible

module: fmgr_secprof_ssl_ssh: {
	module:        "fmgr_secprof_ssl_ssh"
	version_added: "2.8"
	notes: [
		"Full Documentation at U(https://ftnt-ansible-docs.readthedocs.io/en/latest/).",
	]
	author: [
		"Luke Weighall (@lweighall)",
		"Andrew Welsh (@Ghilli3)",
		"Jim Huber (@p4r4n0y1ng)",
	]
	short_description: "Manage SSL and SSH security profiles in FortiManager"
	description: [
		"Manage SSL and SSH security profiles in FortiManager via the FMG API",
	]

	options: {
		adom: {
			description: [
				"The ADOM the configuration should belong to.",
			]
			required: false
			default:  "root"
		}

		mode: {
			description: [
				"Sets one of three modes for managing the object.",
				"Allows use of soft-adds instead of overwriting existing values",
			]
			choices: ["add", "set", "delete", "update"]
			required: false
			default:  "add"
		}

		whitelist: {
			description: [
				"Enable/disable exempting servers by FortiGuard whitelist.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		use_ssl_server: {
			description: [
				"Enable/disable the use of SSL server table for SSL offloading.",
				"choice | disable | Don't use SSL server configuration.",
				"choice | enable | Use SSL server configuration.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		untrusted_caname: {
			description: [
				"Untrusted CA certificate used by SSL Inspection.",
			]
			required: false
		}

		ssl_exemptions_log: {
			description: [
				"Enable/disable logging SSL exemptions.",
				"choice | disable | Disable logging SSL exemptions.",
				"choice | enable | Enable logging SSL exemptions.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		ssl_anomalies_log: {
			description: [
				"Enable/disable logging SSL anomalies.",
				"choice | disable | Disable logging SSL anomalies.",
				"choice | enable | Enable logging SSL anomalies.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		server_cert_mode: {
			description: [
				"Re-sign or replace the server's certificate.",
				"choice | re-sign | Multiple clients connecting to multiple servers.",
				"choice | replace | Protect an SSL server.",
			]
			required: false
			choices: ["re-sign", "replace"]
		}

		server_cert: {
			description: [
				"Certificate used by SSL Inspection to replace server certificate.",
			]
			required: false
		}

		rpc_over_https: {
			description: [
				"Enable/disable inspection of RPC over HTTPS.",
				"choice | disable | Disable inspection of RPC over HTTPS.",
				"choice | enable | Enable inspection of RPC over HTTPS.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		name: {
			description: [
				"Name.",
			]
			required: false
		}

		mapi_over_https: {
			description: [
				"Enable/disable inspection of MAPI over HTTPS.",
				"choice | disable | Disable inspection of MAPI over HTTPS.",
				"choice | enable | Enable inspection of MAPI over HTTPS.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		comment: {
			description: [
				"Optional comments.",
			]
			required: false
		}

		caname: {
			description: [
				"CA certificate used by SSL Inspection.",
			]
			required: false
		}

		ftps: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		ftps_allow_invalid_server_cert: {
			description: [
				"When enabled, allows SSL sessions whose server certificate validation failed.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		ftps_client_cert_request: {
			description: [
				"Action based on client certificate request failure.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}

		ftps_ports: {
			description: [
				"Ports to use for scanning (1 - 65535, default = 443).",
			]
			required: false
		}

		ftps_status: {
			description: [
				"Configure protocol inspection status.",
				"choice | disable | Disable.",
				"choice | deep-inspection | Full SSL inspection.",
			]
			required: false
			choices: ["disable", "deep-inspection"]
		}

		ftps_unsupported_ssl: {
			description: [
				"Action based on the SSL encryption used being unsupported.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}

		ftps_untrusted_cert: {
			description: [
				"Allow, ignore, or block the untrusted SSL session server certificate.",
				"choice | allow | Allow the untrusted server certificate.",
				"choice | block | Block the connection when an untrusted server certificate is detected.",
				"choice | ignore | Always take the server certificate as trusted.",
			]
			required: false
			choices: ["allow", "block", "ignore"]
		}

		https: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		https_allow_invalid_server_cert: {
			description: [
				"When enabled, allows SSL sessions whose server certificate validation failed.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		https_client_cert_request: {
			description: [
				"Action based on client certificate request failure.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}

		https_ports: {
			description: [
				"Ports to use for scanning (1 - 65535, default = 443).",
			]
			required: false
		}

		https_status: {
			description: [
				"Configure protocol inspection status.",
				"choice | disable | Disable.",
				"choice | certificate-inspection | Inspect SSL handshake only.",
				"choice | deep-inspection | Full SSL inspection.",
			]
			required: false
			choices: ["disable", "certificate-inspection", "deep-inspection"]
		}

		https_unsupported_ssl: {
			description: [
				"Action based on the SSL encryption used being unsupported.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}

		https_untrusted_cert: {
			description: [
				"Allow, ignore, or block the untrusted SSL session server certificate.",
				"choice | allow | Allow the untrusted server certificate.",
				"choice | block | Block the connection when an untrusted server certificate is detected.",
				"choice | ignore | Always take the server certificate as trusted.",
			]
			required: false
			choices: ["allow", "block", "ignore"]
		}

		imaps: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		imaps_allow_invalid_server_cert: {
			description: [
				"When enabled, allows SSL sessions whose server certificate validation failed.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		imaps_client_cert_request: {
			description: [
				"Action based on client certificate request failure.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}

		imaps_ports: {
			description: [
				"Ports to use for scanning (1 - 65535, default = 443).",
			]
			required: false
		}

		imaps_status: {
			description: [
				"Configure protocol inspection status.",
				"choice | disable | Disable.",
				"choice | deep-inspection | Full SSL inspection.",
			]
			required: false
			choices: ["disable", "deep-inspection"]
		}

		imaps_unsupported_ssl: {
			description: [
				"Action based on the SSL encryption used being unsupported.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}

		imaps_untrusted_cert: {
			description: [
				"Allow, ignore, or block the untrusted SSL session server certificate.",
				"choice | allow | Allow the untrusted server certificate.",
				"choice | block | Block the connection when an untrusted server certificate is detected.",
				"choice | ignore | Always take the server certificate as trusted.",
			]
			required: false
			choices: ["allow", "block", "ignore"]
		}

		pop3s: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		pop3s_allow_invalid_server_cert: {
			description: [
				"When enabled, allows SSL sessions whose server certificate validation failed.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		pop3s_client_cert_request: {
			description: [
				"Action based on client certificate request failure.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}

		pop3s_ports: {
			description: [
				"Ports to use for scanning (1 - 65535, default = 443).",
			]
			required: false
		}

		pop3s_status: {
			description: [
				"Configure protocol inspection status.",
				"choice | disable | Disable.",
				"choice | deep-inspection | Full SSL inspection.",
			]
			required: false
			choices: ["disable", "deep-inspection"]
		}

		pop3s_unsupported_ssl: {
			description: [
				"Action based on the SSL encryption used being unsupported.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}

		pop3s_untrusted_cert: {
			description: [
				"Allow, ignore, or block the untrusted SSL session server certificate.",
				"choice | allow | Allow the untrusted server certificate.",
				"choice | block | Block the connection when an untrusted server certificate is detected.",
				"choice | ignore | Always take the server certificate as trusted.",
			]
			required: false
			choices: ["allow", "block", "ignore"]
		}

		smtps: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		smtps_allow_invalid_server_cert: {
			description: [
				"When enabled, allows SSL sessions whose server certificate validation failed.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		smtps_client_cert_request: {
			description: [
				"Action based on client certificate request failure.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}

		smtps_ports: {
			description: [
				"Ports to use for scanning (1 - 65535, default = 443).",
			]
			required: false
		}

		smtps_status: {
			description: [
				"Configure protocol inspection status.",
				"choice | disable | Disable.",
				"choice | deep-inspection | Full SSL inspection.",
			]
			required: false
			choices: ["disable", "deep-inspection"]
		}

		smtps_unsupported_ssl: {
			description: [
				"Action based on the SSL encryption used being unsupported.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}

		smtps_untrusted_cert: {
			description: [
				"Allow, ignore, or block the untrusted SSL session server certificate.",
				"choice | allow | Allow the untrusted server certificate.",
				"choice | block | Block the connection when an untrusted server certificate is detected.",
				"choice | ignore | Always take the server certificate as trusted.",
			]
			required: false
			choices: ["allow", "block", "ignore"]
		}

		ssh: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		ssh_inspect_all: {
			description: [
				"Level of SSL inspection.",
				"choice | disable | Disable.",
				"choice | deep-inspection | Full SSL inspection.",
			]
			required: false
			choices: ["disable", "deep-inspection"]
		}

		ssh_ports: {
			description: [
				"Ports to use for scanning (1 - 65535, default = 443).",
			]
			required: false
		}

		ssh_ssh_algorithm: {
			description: [
				"Relative strength of encryption algorithms accepted during negotiation.",
				"choice | compatible | Allow a broader set of encryption algorithms for best compatibility.",
				"choice | high-encryption | Allow only AES-CTR, AES-GCM ciphers and high encryption algorithms.",
			]
			required: false
			choices: ["compatible", "high-encryption"]
		}

		ssh_ssh_policy_check: {
			description: [
				"Enable/disable SSH policy check.",
				"choice | disable | Disable SSH policy check.",
				"choice | enable | Enable SSH policy check.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		ssh_ssh_tun_policy_check: {
			description: [
				"Enable/disable SSH tunnel policy check.",
				"choice | disable | Disable SSH tunnel policy check.",
				"choice | enable | Enable SSH tunnel policy check.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		ssh_status: {
			description: [
				"Configure protocol inspection status.",
				"choice | disable | Disable.",
				"choice | deep-inspection | Full SSL inspection.",
			]
			required: false
			choices: ["disable", "deep-inspection"]
		}

		ssh_unsupported_version: {
			description: [
				"Action based on SSH version being unsupported.",
				"choice | block | Block.",
				"choice | bypass | Bypass.",
			]
			required: false
			choices: ["block", "bypass"]
		}

		ssl: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		ssl_allow_invalid_server_cert: {
			description: [
				"When enabled, allows SSL sessions whose server certificate validation failed.",
				"choice | disable | Disable setting.",
				"choice | enable | Enable setting.",
			]
			required: false
			choices: ["disable", "enable"]
		}

		ssl_client_cert_request: {
			description: [
				"Action based on client certificate request failure.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}

		ssl_inspect_all: {
			description: [
				"Level of SSL inspection.",
				"choice | disable | Disable.",
				"choice | certificate-inspection | Inspect SSL handshake only.",
				"choice | deep-inspection | Full SSL inspection.",
			]
			required: false
			choices: ["disable", "certificate-inspection", "deep-inspection"]
		}

		ssl_unsupported_ssl: {
			description: [
				"Action based on the SSL encryption used being unsupported.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}

		ssl_untrusted_cert: {
			description: [
				"Allow, ignore, or block the untrusted SSL session server certificate.",
				"choice | allow | Allow the untrusted server certificate.",
				"choice | block | Block the connection when an untrusted server certificate is detected.",
				"choice | ignore | Always take the server certificate as trusted.",
			]
			required: false
			choices: ["allow", "block", "ignore"]
		}

		ssl_exempt: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		ssl_exempt_address: {
			description: [
				"IPv4 address object.",
			]
			required: false
		}

		ssl_exempt_address6: {
			description: [
				"IPv6 address object.",
			]
			required: false
		}

		ssl_exempt_fortiguard_category: {
			description: [
				"FortiGuard category ID.",
			]
			required: false
		}

		ssl_exempt_regex: {
			description: [
				"Exempt servers by regular expression.",
			]
			required: false
		}

		ssl_exempt_type: {
			description: [
				"Type of address object (IPv4 or IPv6) or FortiGuard category.",
				"choice | fortiguard-category | FortiGuard category.",
				"choice | address | Firewall IPv4 address.",
				"choice | address6 | Firewall IPv6 address.",
				"choice | wildcard-fqdn | Fully Qualified Domain Name with wildcard characters.",
				"choice | regex | Regular expression FQDN.",
			]
			required: false
			choices: ["fortiguard-category", "address", "address6", "wildcard-fqdn", "regex"]
		}

		ssl_exempt_wildcard_fqdn: {
			description: [
				"Exempt servers by wildcard FQDN.",
			]
			required: false
		}

		ssl_server: {
			description: [
				"EXPERTS ONLY! KNOWLEDGE OF FMGR JSON API IS REQUIRED!",
				"List of multiple child objects to be added. Expects a list of dictionaries.",
				"Dictionaries must use FortiManager API parameters, not the ansible ones listed below.",
				"If submitted, all other prefixed sub-parameters ARE IGNORED.",
				"This object is MUTUALLY EXCLUSIVE with its options.",
				"We expect that you know what you are doing with these list parameters, and are leveraging the JSON API Guide.",
				"WHEN IN DOUBT, USE THE SUB OPTIONS BELOW INSTEAD TO CREATE OBJECTS WITH MULTIPLE TASKS",
			]
			required: false
		}

		ssl_server_ftps_client_cert_request: {
			description: [
				"Action based on client certificate request failure during the FTPS handshake.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}

		ssl_server_https_client_cert_request: {
			description: [
				"Action based on client certificate request failure during the HTTPS handshake.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}

		ssl_server_imaps_client_cert_request: {
			description: [
				"Action based on client certificate request failure during the IMAPS handshake.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}

		ssl_server_ip: {
			description: [
				"IPv4 address of the SSL server.",
			]
			required: false
		}

		ssl_server_pop3s_client_cert_request: {
			description: [
				"Action based on client certificate request failure during the POP3S handshake.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}

		ssl_server_smtps_client_cert_request: {
			description: [
				"Action based on client certificate request failure during the SMTPS handshake.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}

		ssl_server_ssl_other_client_cert_request: {
			description: [
				"Action based on client certificate request failure during an SSL protocol handshake.",
				"choice | bypass | Bypass.",
				"choice | inspect | Inspect.",
				"choice | block | Block.",
			]
			required: false
			choices: ["bypass", "inspect", "block"]
		}
	}
}
