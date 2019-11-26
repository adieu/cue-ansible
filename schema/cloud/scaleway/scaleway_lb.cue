package ansible

module: scaleway_lb: {
	module:            "scaleway_lb"
	short_description: "Scaleway load-balancer management module"
	version_added:     "2.8"
	author:            "Remy Leone (@sieben)"
	description: [
		"This module manages load-balancers on Scaleway.",
	]
	extends_documentation_fragment: "scaleway"

	options: {

		name: {
			description: [
				"Name of the load-balancer",
			]
			required: true
		}

		description: {
			description: [
				"Description of the load-balancer",
			]
			required: true
		}

		organization_id: {
			description: [
				"Organization identifier",
			]
			required: true
		}

		state: {
			description: [
				"Indicate desired state of the instance.",
			]
			default: "present"
			choices: [
				"present",
				"absent",
			]
		}

		region: {
			description: [
				"Scaleway zone",
			]
			required: true
			choices: [
				"nl-ams",
				"fr-par",
			]
		}

		tags: description: [
			"List of tags to apply to the load-balancer",
		]

		wait: {
			description: [
				"Wait for the load-balancer to reach its desired state before returning.",
			]
			type:    "bool"
			default: "no"
		}

		wait_timeout: {
			description: [
				"Time to wait for the load-balancer to reach the expected state",
			]
			required: false
			default:  300
		}

		wait_sleep_time: {
			description: [
				"Time to wait before every attempt to check the state of the load-balancer",
			]
			required: false
			default:  3
		}
	}
}
