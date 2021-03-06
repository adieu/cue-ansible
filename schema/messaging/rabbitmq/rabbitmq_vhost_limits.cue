package ansible

module: rabbitmq_vhost_limits: {
	module:        "rabbitmq_vhost_limits"
	author:        "Hiroyuki Matsuo (@h-matsuo)"
	version_added: "2.8"

	short_description: "Manage the state of virtual host limits in RabbitMQ"
	description: [
		"This module sets/clears certain limits on a virtual host.",
		"The configurable limits are I(max_connections) and I(max-queues).",
	]

	options: {
		max_connections: {
			description: [
				"Max number of concurrent client connections.",
				"Negative value means \"no limit\".",
				"Ignored when the I(state) is C(absent).",
			]
			default: -1
		}
		max_queues: {
			description: [
				"Max number of queues.",
				"Negative value means \"no limit\".",
				"Ignored when the I(state) is C(absent).",
			]
			default: -1
		}
		node: description: [
			"Name of the RabbitMQ Erlang node to manage.",
		]
		state: {
			description: [
				"Specify whether the limits are to be set or cleared.",
				"If set to C(absent), the limits of both I(max_connections) and I(max-queues) will be cleared.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
		vhost: {
			description: [
				"Name of the virtual host to manage.",
			]
			default: "/"
		}
	}
}
