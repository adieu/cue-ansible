package ansible

module: rabbitmq_parameter: {
	module:            "rabbitmq_parameter"
	short_description: "Manage RabbitMQ parameters"
	description: [
		"Manage dynamic, cluster-wide parameters for RabbitMQ",
	]
	version_added: "1.1"
	author:        "Chris Hoffman (@chrishoffman)"
	options: {
		component: {
			description: [
				"Name of the component of which the parameter is being set",
			]
			required: true
		}
		name: {
			description: [
				"Name of the parameter being set",
			]
			required: true
		}
		value: description: [
			"Value of the parameter, as a JSON term",
		]
		vhost: {
			description: [
				"vhost to apply access privileges.",
			]
			default: "/"
		}
		node: {
			description: [
				"erlang node name of the rabbit we wish to configure",
			]
			default:       "rabbit"
			version_added: "1.2"
		}
		state: {
			description: [
				"Specify if user is to be added or removed",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
}
