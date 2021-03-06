package ansible

module: sensu_handler: {
	module:            "sensu_handler"
	author:            "David Moreau Simard (@dmsimard)"
	short_description: "Manages Sensu handler configuration"
	version_added:     2.4
	description: [
		"Manages Sensu handler configuration",
		"For more information, refer to the Sensu documentation: U(https://sensuapp.org/docs/latest/reference/handlers.html)",
	]
	options: {
		state: {
			description: [
				"Whether the handler should be present or not",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		name: {
			description: [
				"A unique name for the handler. The name cannot contain special characters or spaces.",
			]
			required: true
		}
		type: {
			description: [
				"The handler type",
			]
			choices: ["pipe", "tcp", "udp", "transport", "set"]
			required: true
		}
		filter: description: [
			"The Sensu event filter (name) to use when filtering events for the handler.",
		]
		filters: description: [
			"An array of Sensu event filters (names) to use when filtering events for the handler.",
			"Each array item must be a string.",
		]
		severities: {
			description: [
				"An array of check result severities the handler will handle.",
				"NOTE: event resolution bypasses this filtering.",
			]
			choices: ["warning", "critical", "unknown"]
		}
		mutator: description: [
			"The Sensu event mutator (name) to use to mutate event data for the handler.",
		]
		timeout: {
			description: [
				"The handler execution duration timeout in seconds (hard stop).",
				"Only used by pipe and tcp handler types.",
			]
			default: 10
		}
		handle_silenced: {
			description: [
				"If events matching one or more silence entries should be handled.",
			]
			type:    "bool"
			default: "no"
		}
		handle_flapping: {
			description: [
				"If events in the flapping state should be handled.",
			]
			type:    "bool"
			default: "no"
		}
		command: description: [
			"The handler command to be executed.",
			"The event data is passed to the process via STDIN.",
			"NOTE: the command attribute is only required for Pipe handlers (i.e. handlers configured with \"type\": \"pipe\").",
		]
		socket: description: [
			"The socket definition scope, used to configure the TCP/UDP handler socket.",
			"NOTE: the socket attribute is only required for TCP/UDP handlers (i.e. handlers configured with \"type\": \"tcp\" or \"type\": \"udp\").",
		]
		pipe: description: [
			"The pipe definition scope, used to configure the Sensu transport pipe.",
			"NOTE: the pipe attribute is only required for Transport handlers (i.e. handlers configured with \"type\": \"transport\").",
		]
		handlers: description: [
			"An array of Sensu event handlers (names) to use for events using the handler set.",
			"Each array item must be a string.",
			"NOTE: the handlers attribute is only required for handler sets (i.e. handlers configured with \"type\": \"set\").",
		]
	}
	notes: ["Check mode is supported"]
}
