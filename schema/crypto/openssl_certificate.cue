package ansible

module: openssl_certificate: {
	module:            "openssl_certificate"
	version_added:     "2.4"
	short_description: "Generate and/or check OpenSSL certificates"
	description: [
		"This module allows one to (re)generate OpenSSL certificates.",
		"It implements a notion of provider (ie. C(selfsigned), C(ownca), C(acme), C(assertonly), C(entrust)) for your certificate.",
		"The C(assertonly) provider is intended for use cases where one is only interested in checking properties of a supplied certificate. Please note that this provider has been deprecated in Ansible 2.9 and will be removed in Ansible 2.13. See the examples on how to emulate C(assertonly) usage with M(openssl_certificate_info), M(openssl_csr_info), M(openssl_privatekey_info) and M(assert). This also allows more flexible checks than the ones offered by the C(assertonly) provider.",
		"The C(ownca) provider is intended for generating OpenSSL certificate signed with your own CA (Certificate Authority) certificate (self-signed certificate).",
		"Many properties that can be specified in this module are for validation of an existing or newly generated certificate. The proper place to specify them, if you want to receive a certificate with these properties is a CSR (Certificate Signing Request).",
		"Please note that the module regenerates existing certificate if it doesn't match the module's options, or if it seems to be corrupt. If you are concerned that this could overwrite your existing certificate, consider using the I(backup) option.",
		"It uses the pyOpenSSL or cryptography python library to interact with OpenSSL.",
		"If both the cryptography and PyOpenSSL libraries are available (and meet the minimum version requirements) cryptography will be preferred as a backend over PyOpenSSL (unless the backend is forced with C(select_crypto_backend)). Please note that the PyOpenSSL backend was deprecated in Ansible 2.9 and will be removed in Ansible 2.13.",
	]

	requirements: [
		"PyOpenSSL >= 0.15 or cryptography >= 1.6 (if using C(selfsigned) or C(assertonly) provider)",
		"acme-tiny (if using the C(acme) provider)",
	]
	author: [
		"Yanis Guenane (@Spredzy)",
		"Markus Teufelberger (@MarkusTeufelberger)",
	]
	options: {
		state: {
			description: [
				"Whether the certificate should exist or not, taking action if the state is different from what is stated.",
			]
			type:    "str"
			default: "present"
			choices: ["absent", "present"]
		}

		path: {
			description: [
				"Remote absolute path where the generated certificate file should be created or is already located.",
			]
			type:     "path"
			required: true
		}

		provider: {
			description: [
				"Name of the provider to use to generate/retrieve the OpenSSL certificate.",
				"The C(assertonly) provider will not generate files and fail if the certificate file is missing.",
				"The C(assertonly) provider has been deprecated in Ansible 2.9 and will be removed in Ansible 2.13. Please see the examples on how to emulate it with M(openssl_certificate_info), M(openssl_csr_info), M(openssl_privatekey_info) and M(assert).",
				"The C(entrust) provider was added for Ansible 2.9 and requires credentials for the L(https://www.entrustdatacard.com/products/categories/ssl-certificates,Entrust Certificate Services) (ECS) API.",
			]

			type:     "str"
			required: true
			choices: ["acme", "assertonly", "entrust", "ownca", "selfsigned"]
		}

		force: {
			description: [
				"Generate the certificate, even if it already exists.",
			]
			type:    "bool"
			default: false
		}

		csr_path: {
			description: [
				"Path to the Certificate Signing Request (CSR) used to generate this certificate.",
				"This is not required in C(assertonly) mode.",
			]
			type: "path"
		}

		privatekey_path: {
			description: [
				"Path to the private key to use when signing the certificate.",
			]
			type: "path"
		}

		privatekey_passphrase: {
			description: [
				"The passphrase for the I(privatekey_path).",
				"This is required if the private key is password protected.",
			]
			type: "str"
		}

		selfsigned_version: {
			description: [
				"Version of the C(selfsigned) certificate.",
				"Nowadays it should almost always be C(3).",
				"This is only used by the C(selfsigned) provider.",
			]
			type:          "int"
			default:       3
			version_added: "2.5"
		}

		selfsigned_digest: {
			description: [
				"Digest algorithm to be used when self-signing the certificate.",
				"This is only used by the C(selfsigned) provider.",
			]
			type:    "str"
			default: "sha256"
		}

		selfsigned_not_before: {
			description: [
				"The point in time the certificate is valid from.",
				"Time can be specified either as relative time or as absolute timestamp.",
				"Time will always be interpreted as UTC.",
				"Valid format is C([+-]timespec | ASN.1 TIME) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h).",
				"Note that if using relative time this module is NOT idempotent.",
				"If this value is not specified, the certificate will start being valid from now.",
				"This is only used by the C(selfsigned) provider.",
			]
			type:    "str"
			default: "+0s"
			aliases: ["selfsigned_notBefore"]
		}

		selfsigned_not_after: {
			description: [
				"The point in time at which the certificate stops being valid.",
				"Time can be specified either as relative time or as absolute timestamp.",
				"Time will always be interpreted as UTC.",
				"Valid format is C([+-]timespec | ASN.1 TIME) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h).",
				"Note that if using relative time this module is NOT idempotent.",
				"If this value is not specified, the certificate will stop being valid 10 years from now.",
				"This is only used by the C(selfsigned) provider.",
			]
			type:    "str"
			default: "+3650d"
			aliases: ["selfsigned_notAfter"]
		}

		selfsigned_create_subject_key_identifier: {
			description: [
				"Whether to create the Subject Key Identifier (SKI) from the public key.",
				"A value of C(create_if_not_provided) (default) only creates a SKI when the CSR does not provide one.",
				"A value of C(always_create) always creates a SKI. If the CSR provides one, that one is ignored.",
				"A value of C(never_create) never creates a SKI. If the CSR provides one, that one is used.",
				"This is only used by the C(selfsigned) provider.",
				"Note that this is only supported if the C(cryptography) backend is used!",
			]
			type: "str"
			choices: ["create_if_not_provided", "always_create", "never_create"]
			default:       "create_if_not_provided"
			version_added: "2.9"
		}

		ownca_path: {
			description: [
				"Remote absolute path of the CA (Certificate Authority) certificate.",
				"This is only used by the C(ownca) provider.",
			]
			type:          "path"
			version_added: "2.7"
		}

		ownca_privatekey_path: {
			description: [
				"Path to the CA (Certificate Authority) private key to use when signing the certificate.",
				"This is only used by the C(ownca) provider.",
			]
			type:          "path"
			version_added: "2.7"
		}

		ownca_privatekey_passphrase: {
			description: [
				"The passphrase for the I(ownca_privatekey_path).",
				"This is only used by the C(ownca) provider.",
			]
			type:          "str"
			version_added: "2.7"
		}

		ownca_digest: {
			description: [
				"The digest algorithm to be used for the C(ownca) certificate.",
				"This is only used by the C(ownca) provider.",
			]
			type:          "str"
			default:       "sha256"
			version_added: "2.7"
		}

		ownca_version: {
			description: [
				"The version of the C(ownca) certificate.",
				"Nowadays it should almost always be C(3).",
				"This is only used by the C(ownca) provider.",
			]
			type:          "int"
			default:       3
			version_added: "2.7"
		}

		ownca_not_before: {
			description: [
				"The point in time the certificate is valid from.",
				"Time can be specified either as relative time or as absolute timestamp.",
				"Time will always be interpreted as UTC.",
				"Valid format is C([+-]timespec | ASN.1 TIME) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h).",
				"Note that if using relative time this module is NOT idempotent.",
				"If this value is not specified, the certificate will start being valid from now.",
				"This is only used by the C(ownca) provider.",
			]
			type:          "str"
			default:       "+0s"
			version_added: "2.7"
		}

		ownca_not_after: {
			description: [
				"The point in time at which the certificate stops being valid.",
				"Time can be specified either as relative time or as absolute timestamp.",
				"Time will always be interpreted as UTC.",
				"Valid format is C([+-]timespec | ASN.1 TIME) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h).",
				"Note that if using relative time this module is NOT idempotent.",
				"If this value is not specified, the certificate will stop being valid 10 years from now.",
				"This is only used by the C(ownca) provider.",
			]
			type:          "str"
			default:       "+3650d"
			version_added: "2.7"
		}

		ownca_create_subject_key_identifier: {
			description: [
				"Whether to create the Subject Key Identifier (SKI) from the public key.",
				"A value of C(create_if_not_provided) (default) only creates a SKI when the CSR does not provide one.",
				"A value of C(always_create) always creates a SKI. If the CSR provides one, that one is ignored.",
				"A value of C(never_create) never creates a SKI. If the CSR provides one, that one is used.",
				"This is only used by the C(ownca) provider.",
				"Note that this is only supported if the C(cryptography) backend is used!",
			]
			type: "str"
			choices: ["create_if_not_provided", "always_create", "never_create"]
			default:       "create_if_not_provided"
			version_added: "2.9"
		}

		ownca_create_authority_key_identifier: {
			description: [
				"Create a Authority Key Identifier from the CA's certificate. If the CSR provided a authority key identifier, it is ignored.",
				"The Authority Key Identifier is generated from the CA certificate's Subject Key Identifier, if available. If it is not available, the CA certificate's public key will be used.",
				"This is only used by the C(ownca) provider.",
				"Note that this is only supported if the C(cryptography) backend is used!",
			]
			type:          "bool"
			default:       true
			version_added: "2.9"
		}

		acme_accountkey_path: {
			description: [
				"The path to the accountkey for the C(acme) provider.",
				"This is only used by the C(acme) provider.",
			]
			type: "path"
		}

		acme_challenge_path: {
			description: [
				"The path to the ACME challenge directory that is served on U(http://<HOST>:80/.well-known/acme-challenge/)",
				"This is only used by the C(acme) provider.",
			]
			type: "path"
		}

		acme_chain: {
			description: [
				"Include the intermediate certificate to the generated certificate",
				"This is only used by the C(acme) provider.",
				"Note that this is only available for older versions of C(acme-tiny). New versions include the chain automatically, and setting I(acme_chain) to C(yes) results in an error.",
			]

			type:          "bool"
			default:       false
			version_added: "2.5"
		}

		signature_algorithms: {
			description: [
				"A list of algorithms that you would accept the certificate to be signed with (e.g. ['sha256WithRSAEncryption', 'sha512WithRSAEncryption']).",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type:     "list"
			elements: "str"
		}

		issuer: {
			description: [
				"The key/value pairs that must be present in the issuer name field of the certificate.",
				"If you need to specify more than one value with the same key, use a list as value.",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type: "dict"
		}

		issuer_strict: {
			description: [
				"If set to C(yes), the I(issuer) field must contain only these values.",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type:          "bool"
			default:       false
			version_added: "2.5"
		}

		subject: {
			description: [
				"The key/value pairs that must be present in the subject name field of the certificate.",
				"If you need to specify more than one value with the same key, use a list as value.",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type: "dict"
		}

		subject_strict: {
			description: [
				"If set to C(yes), the I(subject) field must contain only these values.",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type:          "bool"
			default:       false
			version_added: "2.5"
		}

		has_expired: {
			description: [
				"Checks if the certificate is expired/not expired at the time the module is executed.",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type:    "bool"
			default: false
		}

		version: {
			description: [
				"The version of the certificate.",
				"Nowadays it should almost always be 3.",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type: "int"
		}

		valid_at: {
			description: [
				"The certificate must be valid at this point in time.",
				"The timestamp is formatted as an ASN.1 TIME.",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type: "str"
		}

		invalid_at: {
			description: [
				"The certificate must be invalid at this point in time.",
				"The timestamp is formatted as an ASN.1 TIME.",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type: "str"
		}

		not_before: {
			description: [
				"The certificate must start to become valid at this point in time.",
				"The timestamp is formatted as an ASN.1 TIME.",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type: "str"
			aliases: ["notBefore"]
		}

		not_after: {
			description: [
				"The certificate must expire at this point in time.",
				"The timestamp is formatted as an ASN.1 TIME.",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type: "str"
			aliases: ["notAfter"]
		}

		valid_in: {
			description: [
				"The certificate must still be valid at this relative time offset from now.",
				"Valid format is C([+-]timespec | number_of_seconds) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h).",
				"Note that if using this parameter, this module is NOT idempotent.",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type: "str"
		}

		key_usage: {
			description: [
				"The I(key_usage) extension field must contain all these values.",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type:     "list"
			elements: "str"
			aliases: ["keyUsage"]
		}

		key_usage_strict: {
			description: [
				"If set to C(yes), the I(key_usage) extension field must contain only these values.",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type:    "bool"
			default: false
			aliases: ["keyUsage_strict"]
		}

		extended_key_usage: {
			description: [
				"The I(extended_key_usage) extension field must contain all these values.",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type:     "list"
			elements: "str"
			aliases: ["extendedKeyUsage"]
		}

		extended_key_usage_strict: {
			description: [
				"If set to C(yes), the I(extended_key_usage) extension field must contain only these values.",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type:    "bool"
			default: false
			aliases: ["extendedKeyUsage_strict"]
		}

		subject_alt_name: {
			description: [
				"The I(subject_alt_name) extension field must contain these values.",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type:     "list"
			elements: "str"
			aliases: ["subjectAltName"]
		}

		subject_alt_name_strict: {
			description: [
				"If set to C(yes), the I(subject_alt_name) extension field must contain only these values.",
				"This is only used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type:    "bool"
			default: false
			aliases: ["subjectAltName_strict"]
		}

		select_crypto_backend: {
			description: [
				"Determines which crypto backend to use.",
				"The default choice is C(auto), which tries to use C(cryptography) if available, and falls back to C(pyopenssl).",
				"If set to C(pyopenssl), will try to use the L(pyOpenSSL,https://pypi.org/project/pyOpenSSL/) library.",
				"If set to C(cryptography), will try to use the L(cryptography,https://cryptography.io/) library.",
				"Please note that the C(pyopenssl) backend has been deprecated in Ansible 2.9, and will be removed in Ansible 2.13. From that point on, only the C(cryptography) backend will be available.",
			]

			type:    "str"
			default: "auto"
			choices: ["auto", "cryptography", "pyopenssl"]
			version_added: "2.8"
		}

		backup: {
			description: [
				"Create a backup file including a timestamp so you can get the original certificate back if you overwrote it with a new one by accident.",
				"This is not used by the C(assertonly) provider.",
				"This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).",
			]

			type:          "bool"
			default:       false
			version_added: "2.8"
		}

		entrust_cert_type: {
			description: [
				"Specify the type of certificate requested.",
				"This is only used by the C(entrust) provider.",
			]
			type:    "str"
			default: "STANDARD_SSL"
			choices: ["STANDARD_SSL", "ADVANTAGE_SSL", "UC_SSL", "EV_SSL", "WILDCARD_SSL", "PRIVATE_SSL", "PD_SSL", "CDS_ENT_LITE", "CDS_ENT_PRO", "SMIME_ENT"]
			version_added: "2.9"
		}

		entrust_requester_email: {
			description: [
				"The email of the requester of the certificate (for tracking purposes).",
				"This is only used by the C(entrust) provider.",
				"This is required if the provider is C(entrust).",
			]
			type:          "str"
			version_added: "2.9"
		}

		entrust_requester_name: {
			description: [
				"The name of the requester of the certificate (for tracking purposes).",
				"This is only used by the C(entrust) provider.",
				"This is required if the provider is C(entrust).",
			]
			type:          "str"
			version_added: "2.9"
		}

		entrust_requester_phone: {
			description: [
				"The phone number of the requester of the certificate (for tracking purposes).",
				"This is only used by the C(entrust) provider.",
				"This is required if the provider is C(entrust).",
			]
			type:          "str"
			version_added: "2.9"
		}

		entrust_api_user: {
			description: [
				"The username for authentication to the Entrust Certificate Services (ECS) API.",
				"This is only used by the C(entrust) provider.",
				"This is required if the provider is C(entrust).",
			]
			type:          "str"
			version_added: "2.9"
		}

		entrust_api_key: {
			description: [
				"The key (password) for authentication to the Entrust Certificate Services (ECS) API.",
				"This is only used by the C(entrust) provider.",
				"This is required if the provider is C(entrust).",
			]
			type:          "str"
			version_added: "2.9"
		}

		entrust_api_client_cert_path: {
			description: [
				"The path to the client certificate used to authenticate to the Entrust Certificate Services (ECS) API.",
				"This is only used by the C(entrust) provider.",
				"This is required if the provider is C(entrust).",
			]
			type:          "path"
			version_added: "2.9"
		}

		entrust_api_client_cert_key_path: {
			description: [
				"The path to the private key of the client certificate used to authenticate to the Entrust Certificate Services (ECS) API.",
				"This is only used by the C(entrust) provider.",
				"This is required if the provider is C(entrust).",
			]
			type:          "path"
			version_added: "2.9"
		}

		entrust_not_after: {
			description: [
				"The point in time at which the certificate stops being valid.",
				"Time can be specified either as relative time or as an absolute timestamp.",
				"A valid absolute time format is C(ASN.1 TIME) such as C(2019-06-18).",
				"A valid relative time format is C([+-]timespec) where timespec can be an integer + C([w | d | h | m | s]), such as C(+365d) or C(+32w1d2h)).",
				"Time will always be interpreted as UTC.",
				"Note that only the date (day, month, year) is supported for specifying the expiry date of the issued certificate.",
				"The full date-time is adjusted to EST (GMT -5:00) before issuance, which may result in a certificate with an expiration date one day earlier than expected if a relative time is used.",
				"The minimum certificate lifetime is 90 days, and maximum is three years.",
				"If this value is not specified, the certificate will stop being valid 365 days the date of issue.",
				"This is only used by the C(entrust) provider.",
			]
			type:          "str"
			default:       "+365d"
			version_added: "2.9"
		}

		entrust_api_specification_path: {
			description: [
				"The path to the specification file defining the Entrust Certificate Services (ECS) API configuration.",
				"You can use this to keep a local copy of the specification to avoid downloading it every time the module is used.",
				"This is only used by the C(entrust) provider.",
			]
			type:          "path"
			default:       "https://cloud.entrust.net/EntrustCloud/documentation/cms-api-2.1.0.yaml"
			version_added: "2.9"
		}
	}

	extends_documentation_fragment: "files"
	notes: [
		"All ASN.1 TIME values should be specified following the YYYYMMDDHHMMSSZ pattern.",
		"Date specified should be UTC. Minutes and seconds are mandatory.",
		"For security reason, when you use C(ownca) provider, you should NOT run M(openssl_certificate) on a target machine, but on a dedicated CA machine. It is recommended not to store the CA private key on the target machine. Once signed, the certificate can be moved to the target machine.",
	]

	seealso: [{
		module: "openssl_csr"
	}, {
		module: "openssl_dhparam"
	}, {
		module: "openssl_pkcs12"
	}, {
		module: "openssl_privatekey"
	}, {
		module: "openssl_publickey"
	}]
}
