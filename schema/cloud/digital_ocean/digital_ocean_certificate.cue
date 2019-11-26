package ansible

module: digital_ocean_certificate: {
	module:            "digital_ocean_certificate"
	short_description: "Manage certificates in DigitalOcean."
	description: [
		"Create, Retrieve and remove certificates DigitalOcean.",
	]
	author:        "Abhijeet Kasurde (@Akasurde)"
	version_added: "2.5"
	options: {
		name: {
			description: [
				"The name of the certificate.",
			]
			required: true
		}
		private_key: description: [
			"A PEM-formatted private key content of SSL Certificate.",
		]
		leaf_certificate: description: [
			"A PEM-formatted public SSL Certificate.",
		]
		certificate_chain: description: [
			"The full PEM-formatted trust chain between the certificate authority's certificate and your domain's SSL certificate.",
		]
		state: {
			description: [
				"Whether the certificate should be present or absent.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "digital_ocean.documentation"
	notes: [
		"Two environment variables can be used, DO_API_KEY, DO_OAUTH_TOKEN and DO_API_TOKEN. They both refer to the v2 token.",
	]
}
