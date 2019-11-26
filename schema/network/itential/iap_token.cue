package ansible

module: iap_token: {
	module:            "iap_token"
	version_added:     "2.8"
	author:            "Itential (@cma0) <opensource@itential.com>"
	short_description: "Get token for the Itential Automation Platform"
	description: [
		"Checks the connection to IAP and retrieves a login token.",
	]
	options: {
		iap_port: {
			description: [
				"Provide the port number for the Itential Automation Platform",
			]
			required: true
			default:  null
		}

		iap_fqdn: {
			description: [
				"Provide the fqdn or ip-address for the Itential Automation Platform",
			]
			required: true
			default:  null
		}

		username: {
			description: [
				"Provide the username for the Itential Automation Platform",
			]
			required: true
			default:  null
		}

		password: {
			description: [
				"Provide the password for the Itential Automation Platform",
			]
			required: true
			default:  null
		}

		https: {
			description: [
				"Use HTTPS to connect",
				"By default using http",
			]
			type:    "bool"
			default: false
		}

		validate_certs: {
			description: [
				"If C(no), SSL certificates for the target url will not be validated. This should only be used on personally controlled sites using self-signed certificates.",
			]

			type:    "bool"
			default: false
		}
	}
}
