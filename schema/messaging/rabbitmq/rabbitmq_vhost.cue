package ansible

module: rabbitmq_vhost: {
	module:            "rabbitmq_vhost"
	short_description: "Manage the state of a virtual host in RabbitMQ"
	description: [
		"Manage the state of a virtual host in RabbitMQ",
	]
	version_added: "1.1"
	author:        "Chris Hoffman (@chrishoffman)"
	options: {
		name: {
			description: [
				"The name of the vhost to manage",
			]
			required: true
			aliases: ["vhost"]
		}
		node: {
			description: [
				"erlang node name of the rabbit we wish to configure",
			]
			default:       "rabbit"
			version_added: "1.2"
		}
		tracing: {
			description: [
				"Enable/disable tracing for a vhost",
			]
			type:    "bool"
			default: "no"
			aliases: ["trace"]
		}
		state: {
			description: [
				"The state of vhost",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
