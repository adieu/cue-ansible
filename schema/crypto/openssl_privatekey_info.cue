package ansible

module: openssl_privatekey_info: {
	module:            "openssl_privatekey_info"
	version_added:     "2.8"
	short_description: "Provide information for OpenSSL private keys"
	description: [
		"This module allows one to query information on OpenSSL private keys.",
		"In case the key consistency checks fail, the module will fail as this indicates a faked private key. In this case, all return variables are still returned. Note that key consistency checks are not available all key types; if none is available, C(none) is returned for C(key_is_consistent).",
		"It uses the pyOpenSSL or cryptography python library to interact with OpenSSL. If both the cryptography and PyOpenSSL libraries are available (and meet the minimum version requirements) cryptography will be preferred as a backend over PyOpenSSL (unless the backend is forced with C(select_crypto_backend)). Please note that the PyOpenSSL backend was deprecated in Ansible 2.9 and will be removed in Ansible 2.13.",
	]

	requirements: [
		"PyOpenSSL >= 0.15 or cryptography >= 1.2.3",
	]
	author: [
		"Felix Fontein (@felixfontein)",
		"Yanis Guenane (@Spredzy)",
	]
	options: {
		path: {
			description: [
				"Remote absolute path where the private key file is loaded from.",
			]
			type:     "path"
			required: true
		}
		passphrase: {
			description: [
				"The passphrase for the private key.",
			]
			type: "str"
		}
		return_private_key_data: {
			description: [
				"Whether to return private key data.",
				"Only set this to C(yes) when you want private information about this key to leave the remote machine.",
				"WARNING: you have to make sure that private key data isn't accidentally logged!",
			]
			type:    "bool"
			default: false
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
		}
	}

	seealso: [{
		module: "openssl_privatekey"
	}]
}
