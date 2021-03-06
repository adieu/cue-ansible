package ansible

module: acme_certificate_revoke: {
	module:            "acme_certificate_revoke"
	author:            "Felix Fontein (@felixfontein)"
	version_added:     "2.7"
	short_description: "Revoke certificates with the ACME protocol"
	description: [
		"Allows to revoke certificates issued by a CA supporting the L(ACME protocol,https://tools.ietf.org/html/rfc8555), such as L(Let's Encrypt,https://letsencrypt.org/).",
	]

	notes: [
		"Exactly one of C(account_key_src), C(account_key_content), C(private_key_src) or C(private_key_content) must be specified.",
		"Trying to revoke an already revoked certificate should result in an unchanged status, even if the revocation reason was different than the one specified here. Also, depending on the server, it can happen that some other error is returned if the certificate has already been revoked.",
	]

	seealso: [{
		name:        "The Let's Encrypt documentation"
		description: "Documentation for the Let's Encrypt Certification Authority. Provides useful information for example on rate limits."

		link: "https://letsencrypt.org/docs/"
	}, {
		name:        "Automatic Certificate Management Environment (ACME)"
		description: "The specification of the ACME protocol (RFC 8555)."
		link:        "https://tools.ietf.org/html/rfc8555"
	}, {
		module:      "acme_inspect"
		description: "Allows to debug problems."
	}]
	extends_documentation_fragment: [
		"acme",
	]
	options: {
		certificate: {
			description: [
				"Path to the certificate to revoke.",
			]
			type:     "path"
			required: true
		}
		account_key_src: {
			description: [
				"Path to a file containing the ACME account RSA or Elliptic Curve key.",
				"RSA keys can be created with C(openssl rsa ...). Elliptic curve keys can be created with C(openssl ecparam -genkey ...). Any other tool creating private keys in PEM format can be used as well.",
				"Mutually exclusive with C(account_key_content).",
				"Required if C(account_key_content) is not used.",
			]
			type: "path"
		}
		account_key_content: {
			description: [
				"Content of the ACME account RSA or Elliptic Curve key.",
				"Note that exactly one of C(account_key_src), C(account_key_content), C(private_key_src) or C(private_key_content) must be specified.",
				"I(Warning): the content will be written into a temporary file, which will be deleted by Ansible when the module completes. Since this is an important private key — it can be used to change the account key, or to revoke your certificates without knowing their private keys —, this might not be acceptable.",
				"In case C(cryptography) is used, the content is not written into a temporary file. It can still happen that it is written to disk by Ansible in the process of moving the module with its argument to the node where it is executed.",
			]

			type: "str"
		}, private_key_src: {

			description: [
				"Path to the certificate's private key.",
				"Note that exactly one of C(account_key_src), C(account_key_content), C(private_key_src) or C(private_key_content) must be specified.",
			]

			type: "path"
		}, private_key_content: {

			description: [
				"Content of the certificate's private key.",
				"Note that exactly one of C(account_key_src), C(account_key_content), C(private_key_src) or C(private_key_content) must be specified.",
				"I(Warning): the content will be written into a temporary file, which will be deleted by Ansible when the module completes. Since this is an important private key — it can be used to change the account key, or to revoke your certificates without knowing their private keys —, this might not be acceptable.",
				"In case C(cryptography) is used, the content is not written into a temporary file. It can still happen that it is written to disk by Ansible in the process of moving the module with its argument to the node where it is executed.",
			]

			type:
				"str"
		}, revoke_reason: {
			description: [
				"One of the revocation reasonCodes defined in L(https://tools.ietf.org/html/rfc5280#section-5.3.1, Section 5.3.1 of RFC5280).",
				"Possible values are C(0) (unspecified), C(1) (keyCompromise), C(2) (cACompromise), C(3) (affiliationChanged), C(4) (superseded), C(5) (cessationOfOperation), C(6) (certificateHold), C(8) (removeFromCRL), C(9) (privilegeWithdrawn), C(10) (aACompromise)",
			]

			type:
				"int"
		}
	}
}
