package ansible

module: airbrake_deployment: {
	module:            "airbrake_deployment"
	version_added:     "1.2"
	author:            "Bruce Pennypacker (@bpennypacker)"
	short_description: "Notify airbrake about app deployments"
	description: [
		"Notify airbrake about app deployments (see http://help.airbrake.io/kb/api-2/deploy-tracking)",
	]
	options: {
		token: {
			description: [
				"API token.",
			]
			required: true
		}
		environment: {
			description: [
				"The airbrake environment name, typically 'production', 'staging', etc.",
			]
			required: true
		}
		user: {
			description: [
				"The username of the person doing the deployment",
			]
			required: false
		}
		repo: {
			description: [
				"URL of the project repository",
			]
			required: false
		}
		revision: {
			description: [
				"A hash, number, tag, or other identifier showing what revision was deployed",
			]
			required: false
		}
		url: {
			description: [
				"Optional URL to submit the notification to. Use to send notifications to Airbrake-compliant tools like Errbit.",
			]
			required:      false
			default:       "https://airbrake.io/deploys.txt"
			version_added: "1.5"
		}
		validate_certs: {
			description: [
				"If C(no), SSL certificates for the target url will not be validated. This should only be used on personally controlled sites using self-signed certificates.",
			]

			required: false
			default:  "yes"
			type:     "bool"
		}
	}

	requirements: []
}
