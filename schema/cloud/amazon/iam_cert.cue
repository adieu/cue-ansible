package ansible

module: iam_cert: {
	module:            "iam_cert"
	short_description: "Manage server certificates for use on ELBs and CloudFront"
	description: [
		"Allows for the management of server certificates",
	]
	version_added: "2.0"
	options: {
		name: {
			description: [
				"Name of certificate to add, update or remove.",
			]
			required: true
			type:     "str"
		}
		new_name: {
			description: [
				"When state is present, this will update the name of the cert.",
				"The cert, key and cert_chain parameters will be ignored if this is defined.",
			]
			type: "str"
		}
		new_path: {
			description: [
				"When state is present, this will update the path of the cert.",
				"The cert, key and cert_chain parameters will be ignored if this is defined.",
			]
			type: "str"
		}
		state: {
			description: [
				"Whether to create(or update) or delete certificate.",
				"If new_path or new_name is defined, specifying present will attempt to make an update these.",
			]
			required: true
			choices: ["present", "absent"]
			type: "str"
		}
		path: {
			description: [
				"When creating or updating, specify the desired path of the certificate.",
			]
			default: "/"
			type:    "str"
		}
		cert_chain: {
			description: [
				"The path to, or content of the CA certificate chain in PEM encoded format. As of 2.4 content is accepted. If the parameter is not a file, it is assumed to be content.",
			]

			type: "str"
		}
		cert: {
			description: [
				"The path to, or content of the certificate body in PEM encoded format. As of 2.4 content is accepted. If the parameter is not a file, it is assumed to be content.",
			]

			type: "str"
		}
		key: {
			description: [
				"The path to, or content of the private key in PEM encoded format. As of 2.4 content is accepted. If the parameter is not a file, it is assumed to be content.",
			]

			type: "str"
		}
		dup_ok: {
			description: [
				"By default the module will not upload a certificate that is already uploaded into AWS. If set to True, it will upload the certificate as long as the name is unique.",
			]

			default: false
			type:    "bool"
		}
	}

	requirements: ["boto"]
	author: "Jonathan I. Davila (@defionscode)"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
