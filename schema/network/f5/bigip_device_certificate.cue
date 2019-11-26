package ansible

module: bigip_device_certificate: {
	module:            "bigip_device_certificate"
	short_description: "Manage self-signed device certificates"
	description: [
		"Module used to create and/or renew self-signed device certificates for BIG-IP.",
	]
	version_added: 2.9
	options: {
		days_valid: {
			description: [
				"Specifies the interval for which the self-signed certificate is valid.",
				"The maximum value is 25 years: C(9125) days",
			]
			type:     "int"
			required: true
		}
		cert_name: {
			description: [
				"Specifies the full name of the certificate file.",
				"If the name is not default C(server.crt), the module will configure C(httpd) to use them prior to restarting the C(httpd) daemon.",
			]

			type:    "str"
			default: "server.crt"
		}
		key_name: {
			description: [
				"Specifies the full name of the key file.",
				"If the name is not default C(server.key), the module will configure C(httpd) to use them prior to restarting the C(httpd) daemon.",
			]

			type:    "str"
			default: "server.key"
		}
		key_size: {
			description: [
				"Specifies the desired key size in bits.",
				"Mandatory option when generating a new certificate.",
			]
			type: "int"
			choices: [
				512,
				1024,
				2048,
				4096,
			]
			default: 2048
		}
		issuer: {
			description: [
				"Certificate properties, required when generating new certificates.",
			]
			suboptions: {
				country: {
					description: [
						"Specifies the Country name attribute for the certificate.",
					]
					type: "str"
				}
				state: {
					description: [
						"Specifies the State or Province attribute for the certificate.",
					]
					type: "str"
				}
				locality: {
					description: [
						"Specifies the city or town name for the certificate.",
					]
					type: "str"
				}
				organization: {
					description: [
						"Specifies the Organization attribute for the certificate.",
					]
					type: "str"
				}
				division: {
					description: [
						"Specifies the department name attribute for the certificate.",
					]
					type: "str"
				}
				common_name: {
					description: [
						"Specifies Common Name attribute for the certificate.",
					]
					type: "str"
				}
				email: {
					description: [
						"Specifies the domain administrator's email address.",
					]
					type: "str"
				}
			}
			type: "dict"
		}
		add_to_trusted: {
			description: [
				"Specified if the certificate should be added to the trusted client and server certificate files.",
			]
			type:    "bool"
			default: false
		}
		new_cert: {
			description: [
				"Specified if the module should generate new certificate.",
				"When C(yes) the device certificate and key will be replaced",
			]
			type:    "bool"
			default: false
		}
		force: {
			description: [
				"When C(yes), will update or overwrite the existing certificate when it is not expired device.",
				"When C(no), the certificate will only be updated/overwritten if expired.",
				"Generally should be C(yes) only in cases where you need to update certificate that is about to expire.",
				"This option is also needed when generating new certificate to replace non expired one.",
			]
			type:    "bool"
			default: false
		}
		transport: {
			description: [
				"Configures the transport connection to use when connecting to the remote device.",
				"This module currently supports only connectivity to the device over cli (ssh).",
			]
			required: true
			choices: [
				"cli",
			]
			default: "cli"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Wojciech Wypior (@wojtek0806)"]
}
