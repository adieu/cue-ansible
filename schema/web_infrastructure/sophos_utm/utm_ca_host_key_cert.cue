package ansible

module: utm_ca_host_key_cert: {
	module: "utm_ca_host_key_cert"

	author: [
		"Stephan Schwarz (@stearz)",
	]

	short_description: "create, update or destroy ca host_key_cert entry in Sophos UTM"

	description: [
		"Create, update or destroy a ca host_key_cert entry in SOPHOS UTM.",
		"This module needs to have the REST Ability of the UTM to be activated.",
	]

	version_added: "2.8"

	options: {
		name: {
			description: [
				"The name of the object. Will be used to identify the entry.",
			]
			required: true
		}
		ca: {
			description: [
				"A reference to an existing utm_ca_signing_ca or utm_ca_verification_ca object.",
			]
			required: true
		}
		meta: {
			description: [
				"A reference to an existing utm_ca_meta_x509 object.",
			]
			required: true
		}
		certificate: {
			description: [
				"The certificate in PEM format.",
			]
			required: true
		}
		comment: description: [
			"Optional comment string.",
		]
		encrypted: {
			description: [
				"Optionally enable encryption.",
			]
			default: false
			type:    "bool"
		}
		key: description: [
			"Optional private key in PEM format.",
		]
	}

	extends_documentation_fragment: ["utm"]
}
