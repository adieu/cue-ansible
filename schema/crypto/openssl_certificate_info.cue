package ansible

module: openssl_certificate_info: {
	module:            "openssl_certificate_info"
	version_added:     "2.8"
	short_description: "Provide information of OpenSSL X.509 certificates"
	description: [
		"This module allows one to query information on OpenSSL certificates.",
		"It uses the pyOpenSSL or cryptography python library to interact with OpenSSL. If both the cryptography and PyOpenSSL libraries are available (and meet the minimum version requirements) cryptography will be preferred as a backend over PyOpenSSL (unless the backend is forced with C(select_crypto_backend)). Please note that the PyOpenSSL backend was deprecated in Ansible 2.9 and will be removed in Ansible 2.13.",
	]

	requirements: [
		"PyOpenSSL >= 0.15 or cryptography >= 1.6",
	]
	author: [
		"Felix Fontein (@felixfontein)",
		"Yanis Guenane (@Spredzy)",
		"Markus Teufelberger (@MarkusTeufelberger)",
	]
	options: {
		path: {
			description: [
				"Remote absolute path where the certificate file is loaded from.",
			]
			type:     "path"
			required: true
		}
		valid_at: {
			description: [
				"A dict of names mapping to time specifications. Every time specified here will be checked whether the certificate is valid at this point. See the C(valid_at) return value for informations on the result.",
				"Time can be specified either as relative time or as absolute timestamp.",
				"Time will always be interpreted as UTC.",
				"Valid format is C([+-]timespec | ASN.1 TIME) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h), and ASN.1 TIME (i.e. pattern C(YYYYMMDDHHMMSSZ)). Note that all timestamps will be treated as being in UTC.",
			]

			type: "dict"
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

	notes: [
		"All timestamp values are provided in ASN.1 TIME format, i.e. following the C(YYYYMMDDHHMMSSZ) pattern. They are all in UTC.",
	]

	seealso: [{
		module: "openssl_certificate"
	}]
}
