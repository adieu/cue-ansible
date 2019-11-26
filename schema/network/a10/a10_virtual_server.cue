package ansible

module: a10_virtual_server: {
	module:            "a10_virtual_server"
	version_added:     1.8
	short_description: "Manage A10 Networks AX/SoftAX/Thunder/vThunder devices' virtual servers."
	description: [
		"Manage SLB (Server Load Balancing) virtual server objects on A10 Networks devices via aXAPIv2.",
	]
	author: [
		"Eric Chou (@ericchou1)",
		"Mischa Peters (@mischapeters)",
	]
	notes: [
		"Requires A10 Networks aXAPI 2.1.",
	]
	extends_documentation_fragment: [
		"a10",
		"url",
	]
	options: {
		state: {
			description: [
				"If the specified virtual server should exist.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		partition: {
			version_added: "2.3"
			description: [
				"set active-partition",
			]
		}
		virtual_server: {
			description: [
				"The SLB (Server Load Balancing) virtual server name.",
			]
			required: true
			aliases: ["vip", "virtual"]
		}
		virtual_server_ip: {
			description: [
				"The SLB virtual server IPv4 address.",
			]
			aliases: ["ip", "address"]
		}
		virtual_server_status: {
			description: [
				"The SLB virtual server status, such as enabled or disabled.",
			]
			default: "enable"
			aliases: ["status"]
			choices: ["enabled", "disabled"]
		}
		virtual_server_ports: description: [
			"A list of ports to create for the virtual server. Each list item should be a dictionary which specifies the C(port:) and C(type:), but can also optionally specify the C(service_group:) as well as the C(status:). See the examples below for details. This parameter is required when C(state) is C(present).",
		]

		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.",
			]

			type:    "bool"
			default: "yes"
		}
	}
}
