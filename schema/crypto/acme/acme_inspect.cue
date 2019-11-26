package ansible

module: acme_inspect: {
	module:            "acme_inspect"
	author:            "Felix Fontein (@felixfontein)"
	version_added:     "2.8"
	short_description: "Send direct requests to an ACME server"
	description: [
		"Allows to send direct requests to an ACME server with the L(ACME protocol,https://tools.ietf.org/html/rfc8555), which is supported by CAs such as L(Let's Encrypt,https://letsencrypt.org/).",
		"This module can be used to debug failed certificate request attempts, for example when M(acme_certificate) fails or encounters a problem which you wish to investigate.",
		"The module can also be used to directly access features of an ACME servers which are not yet supported by the Ansible ACME modules.",
	]

	notes: [
		"The I(account_uri) option must be specified for properly authenticated ACME v2 requests (except a C(new-account) request).",
		"Using the C(ansible) tool, M(acme_inspect) can be used to directly execute ACME requests without the need of writing a playbook. For example, the following command retrieves the ACME account with ID 1 from Let's Encrypt (assuming C(/path/to/key) is the correct private account key): C(ansible localhost -m acme_inspect -a \"account_key_src=/path/to/key acme_directory=https://acme-v02.api.letsencrypt.org/directory acme_version=2 account_uri=https://acme-v02.api.letsencrypt.org/acme/acct/1 method=get url=https://acme-v02.api.letsencrypt.org/acme/acct/1\")",
	]

	seealso: [{
		name:        "Automatic Certificate Management Environment (ACME)"
		description: "The specification of the ACME protocol (RFC 8555)."
		link:        "https://tools.ietf.org/html/rfc8555"
	}, {
		name:        "ACME TLS ALPN Challenge Extension"
		description: "The current draft specification of the C(tls-alpn-01) challenge."
		link:        "https://tools.ietf.org/html/draft-ietf-acme-tls-alpn-05"
	}]
	extends_documentation_fragment: [
		"acme",
	]
	options: {
		url: {
			description: [
				"The URL to send the request to.",
				"Must be specified if I(method) is not C(directory-only).",
			]
			type: "str"
		}
		method: {
			description: [
				"The method to use to access the given URL on the ACME server.",
				"The value C(post) executes an authenticated POST request. The content must be specified in the I(content) option.",
				"The value C(get) executes an authenticated POST-as-GET request for ACME v2, and a regular GET request for ACME v1.",
				"The value C(directory-only) only retrieves the directory, without doing a request.",
			]

			type:    "str"
			default: "get"
			choices: [
				"get",
				"post",
				"directory-only",
			]
		}
		content: {
			description: [
				"An encoded JSON object which will be sent as the content if I(method) is C(post).",
				"Required when I(method) is C(post), and not allowed otherwise.",
			]
			type: "str"
		}
		fail_on_acme_error: {
			description: [
				"If I(method) is C(post) or C(get), make the module fail in case an ACME error is returned.",
			]

			type:    "bool"
			default: true
		}
	}
}
