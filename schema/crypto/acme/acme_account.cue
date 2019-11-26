package ansible

module: acme_account: {
	module:            "acme_account"
	author:            "Felix Fontein (@felixfontein)"
	version_added:     "2.6"
	short_description: "Create, modify or delete ACME accounts"
	description: [
		"Allows to create, modify or delete accounts with a CA supporting the L(ACME protocol,https://tools.ietf.org/html/rfc8555), such as L(Let's Encrypt,https://letsencrypt.org/).",
		"This module only works with the ACME v2 protocol.",
	]
	notes: [
		"The M(acme_certificate) module also allows to do basic account management. When using both modules, it is recommended to disable account management for M(acme_certificate). For that, use the C(modify_account) option of M(acme_certificate).",
	]

	seealso: [{
		name:        "Automatic Certificate Management Environment (ACME)"
		description: "The specification of the ACME protocol (RFC 8555)."
		link:        "https://tools.ietf.org/html/rfc8555"
	}, {
		module:      "acme_account_info"
		description: "Retrieves facts about an ACME account."
	}, {
		module:      "openssl_privatekey"
		description: "Can be used to create a private account key."
	}, {
		module:      "acme_inspect"
		description: "Allows to debug problems."
	}]
	extends_documentation_fragment: [
		"acme",
	]
	options: {
		state: {
			description: [
				"The state of the account, to be identified by its account key.",
				"If the state is C(absent), the account will either not exist or be deactivated.",
				"If the state is C(changed_key), the account must exist. The account key will be changed; no other information will be touched.",
			]

			type:     "str"
			required: true
			choices: [
				"present",
				"absent",
				"changed_key",
			]
		}
		allow_creation: {
			description: [
				"Whether account creation is allowed (when state is C(present)).",
			]
			type:    "bool"
			default: true
		}
		contact: {
			description: [
				"A list of contact URLs.",
				"Email addresses must be prefixed with C(mailto:).",
				"See U(https://tools.ietf.org/html/rfc8555#section-7.3) for what is allowed.",
				"Must be specified when state is C(present). Will be ignored if state is C(absent) or C(changed_key).",
			]

			type:     "list"
			elements: "str"
			default: []
		}
		terms_agreed: {
			description: [
				"Boolean indicating whether you agree to the terms of service document.",
				"ACME servers can require this to be true.",
			]
			type:    "bool"
			default: false
		}
		new_account_key_src: {
			description: [
				"Path to a file containing the ACME account RSA or Elliptic Curve key to change to.",
				"Same restrictions apply as to C(account_key_src).",
				"Mutually exclusive with C(new_account_key_content).",
				"Required if C(new_account_key_content) is not used and state is C(changed_key).",
			]
			type: "path"
		}
		new_account_key_content: {
			description: [
				"Content of the ACME account RSA or Elliptic Curve key to change to.",
				"Same restrictions apply as to C(account_key_content).",
				"Mutually exclusive with C(new_account_key_src).",
				"Required if C(new_account_key_src) is not used and state is C(changed_key).",
			]
			type: "str"
		}
	}
}
