package ansible

module: rax_clb_ssl: {
	module:            "rax_clb_ssl"
	short_description: "Manage SSL termination for a Rackspace Cloud Load Balancer."
	description: [
		"Set up, reconfigure, or remove SSL termination for an existing load balancer.",
	]
	version_added: "2.0"
	options: {
		loadbalancer: {
			description: [
				"Name or ID of the load balancer on which to manage SSL termination.",
			]
			required: true
		}
		state: {
			description: [
				"If set to \"present\", SSL termination will be added to this load balancer.",
				"If \"absent\", SSL termination will be removed instead.",
			]
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
		enabled: {
			description: [
				"If set to \"false\", temporarily disable SSL termination without discarding",
				"existing credentials.",
			]
			default: true
			type:    "bool"
		}
		private_key: description: [
			"The private SSL key as a string in PEM format.",
		]
		certificate: description: [
			"The public SSL certificates as a string in PEM format.",
		]
		intermediate_certificate: description: [
			"One or more intermediate certificate authorities as a string in PEM",
			"format, concatenated into a single string.",
		]
		secure_port: {
			description: [
				"The port to listen for secure traffic.",
			]
			default: 443
		}
		secure_traffic_only: {
			description: [
				"If \"true\", the load balancer will *only* accept secure traffic.",
			]
			default: false
			type:    "bool"
		}
		https_redirect: {
			description: [
				"If \"true\", the load balancer will redirect HTTP traffic to HTTPS.",
				"Requires \"secure_traffic_only\" to be true. Incurs an implicit wait if SSL",
				"termination is also applied or removed.",
			]
			type: "bool"
		}
		wait: {
			description: [
				"Wait for the balancer to be in state \"running\" before turning.",
			]
			default: false
			type:    "bool"
		}
		wait_timeout: {
			description: [
				"How long before \"wait\" gives up, in seconds.",
			]
			default: 300
		}
	}
	author: "Ash Wilson (@smashwilson)"
	extends_documentation_fragment: [
		"rackspace",
		"rackspace.openstack",
	]
}
