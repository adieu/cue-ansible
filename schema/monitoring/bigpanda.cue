package ansible

module: bigpanda: {
	module:            "bigpanda"
	author:            "Hagai Kariti (@hkariti)"
	short_description: "Notify BigPanda about deployments"
	version_added:     "1.8"
	description: [
		"Notify BigPanda when deployments start and end (successfully or not). Returns a deployment object containing all the parameters for future module calls.",
	]
	options: {
		component: {
			description: [
				"The name of the component being deployed. Ex: billing",
			]
			required: true
			aliases: ["name"]
		}
		version: {
			description: [
				"The deployment version.",
			]
			required: true
		}
		token: {
			description: [
				"API token.",
			]
			required: true
		}
		state: {
			description: [
				"State of the deployment.",
			]
			required: true
			choices: ["started", "finished", "failed"]
		}
		hosts: {
			description: [
				"Name of affected host name. Can be a list.",
			]
			required: false
			default:  "machine's hostname"
			aliases: ["host"]
		}
		env: {
			description: [
				"The environment name, typically 'production', 'staging', etc.",
			]
			required: false
		}
		owner: {
			description: [
				"The person responsible for the deployment.",
			]
			required: false
		}
		description: {
			description: [
				"Free text description of the deployment.",
			]
			required: false
		}
		url: {
			description: [
				"Base URL of the API server.",
			]
			required: false
			default:  "https://api.bigpanda.io"
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

	// informational: requirements for nodes
	requirements: []
}
