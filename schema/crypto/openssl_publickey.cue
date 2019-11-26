package ansible

module: openssl_publickey: {
	module:            "openssl_publickey"
	version_added:     "2.3"
	short_description: "Generate an OpenSSL public key from its private key."
	description: [
		"This module allows one to (re)generate OpenSSL public keys from their private keys.",
		"Keys are generated in PEM or OpenSSH format.",
		"The module can use the cryptography Python library, or the pyOpenSSL Python library. By default, it tries to detect which one is available. This can be overridden with the I(select_crypto_backend) option. When I(format) is C(OpenSSH), the C(cryptography) backend has to be used. Please note that the PyOpenSSL backend was deprecated in Ansible 2.9 and will be removed in Ansible 2.13.\"",
	]

	requirements: [
		"Either cryptography >= 1.2.3 (older versions might work as well)",
		"Or pyOpenSSL >= 16.0.0",
		"Needs cryptography >= 1.4 if I(format) is C(OpenSSH)",
	]
	author: [
		"Yanis Guenane (@Spredzy)",
		"Felix Fontein (@felixfontein)",
	]
	options: {
		state: {
			description: [
				"Whether the public key should exist or not, taking action if the state is different from what is stated.",
			]
			type:    "str"
			default: "present"
			choices: ["absent", "present"]
		}
		force: {
			description: [
				"Should the key be regenerated even it it already exists.",
			]
			type:    "bool"
			default: false
		}
		format: {
			description: [
				"The format of the public key.",
			]
			type:    "str"
			default: "PEM"
			choices: ["OpenSSH", "PEM"]
			version_added: "2.4"
		}
		path: {
			description: [
				"Name of the file in which the generated TLS/SSL public key will be written.",
			]
			type:     "path"
			required: true
		}
		privatekey_path: {
			description: [
				"Path to the TLS/SSL private key from which to generate the public key.",
			]
			type:     "path"
			required: true
		}
		privatekey_passphrase: {
			description: [
				"The passphrase for the private key.",
			]
			type:          "str"
			version_added: "2.4"
		}
		backup: {
			description: [
				"Create a backup file including a timestamp so you can get the original public key back if you overwrote it with a different one by accident.",
			]

			type:          "bool"
			default:       false
			version_added: "2.8"
		}
		select_crypto_backend: {
			description: [
				"Determines which crypto backend to use.",
				"The default choice is C(auto), which tries to use C(cryptography) if available, and falls back to C(pyopenssl).",
				"If set to C(pyopenssl), will try to use the L(pyOpenSSL,https://pypi.org/project/pyOpenSSL/) library.",
				"If set to C(cryptography), will try to use the L(cryptography,https://cryptography.io/) library.",
			]
			type:    "str"
			default: "auto"
			choices: ["auto", "cryptography", "pyopenssl"]
			version_added: "2.9"
		}
	}
	extends_documentation_fragment: [
		"files",
	]
	seealso: [{
		module: "openssl_certificate"
	}, {
		module: "openssl_csr"
	}, {
		module: "openssl_dhparam"
	}, {
		module: "openssl_pkcs12"
	}, {
		module: "openssl_privatekey"
	}]
}
