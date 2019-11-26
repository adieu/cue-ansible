package ansible

module: a10_service_group: {
	module:            "a10_service_group"
	version_added:     1.8
	short_description: "Manage A10 Networks AX/SoftAX/Thunder/vThunder devices' service groups."
	description: [
		"Manage SLB (Server Load Balancing) service-group objects on A10 Networks devices via aXAPIv2.",
	]
	author: [
		"Eric Chou (@ericchou1)",
		"Mischa Peters (@mischapeters)",
	]
	notes: [
		"Requires A10 Networks aXAPI 2.1.",
		"When a server doesn't exist and is added to the service-group the server will be created.",
	]
	extends_documentation_fragment: [
		"a10",
		"url",
	]
	options: {
		state: {
			description: [
				"If the specified service group should exists.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
		partition: {
			version_added: "2.3"
			description: [
				"set active-partition",
			]
		}
		service_group: {
			description: [
				"The SLB (Server Load Balancing) service-group name",
			]
			required: true
			aliases: ["service", "pool", "group"]
		}
		service_group_protocol: {
			description: [
				"The SLB service-group protocol of TCP or UDP.",
			]
			default: "tcp"
			aliases: ["proto", "protocol"]
			choices: ["tcp", "udp"]
		}
		service_group_method: {
			description: [
				"The SLB service-group load balancing method, such as round-robin or weighted-rr.",
			]
			default: "round-robin"
			aliases: ["method"]
			choices: [
				"round-robin",
				"weighted-rr",
				"least-connection",
				"weighted-least-connection",
				"service-least-connection",
				"service-weighted-least-connection",
				"fastest-response",
				"least-request",
				"round-robin-strict",
				"src-ip-only-hash",
				"src-ip-hash",
			]
		}
		servers: {
			description: [
				"A list of servers to add to the service group. Each list item should be a dictionary which specifies the C(server:) and C(port:), but can also optionally specify the C(status:). See the examples below for details.",
			]

			aliases: ["server", "member"]
		}
		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.",
			]

			type:    "bool"
			default: "yes"
		}
	}
}
