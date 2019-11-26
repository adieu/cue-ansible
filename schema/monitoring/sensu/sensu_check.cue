package ansible

module: sensu_check: {
	module:            "sensu_check"
	short_description: "Manage Sensu checks"
	version_added:     2.0
	description: [
		"Manage the checks that should be run on a machine by I(Sensu).",
		"Most options do not have a default and will not be added to the check definition unless specified.",
		"All defaults except I(path), I(state), I(backup) and I(metric) are not managed by this module,",
		"they are simply specified for your convenience.",
	]
	options: {
		name: {
			description: [
				"The name of the check",
				"This is the key that is used to determine whether a check exists",
			]
			required: true
		}
		state: {
			description: [
				"Whether the check should be present or not",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		path: {
			description: [
				"Path to the json file of the check to be added/removed.",
				"Will be created if it does not exist (unless I(state=absent)).",
				"The parent folders need to exist when I(state=present), otherwise an error will be thrown",
			]
			default: "/etc/sensu/conf.d/checks.json"
		}
		backup: {
			description: [
				"Create a backup file (if yes), including the timestamp information so",
				"you can get the original file back if you somehow clobbered it incorrectly.",
			]
			type:    "bool"
			default: "no"
		}
		command: {
			description: [
				"Path to the sensu check to run (not required when I(state=absent))",
			]
			required: true
		}
		handlers: {
			description: [
				"List of handlers to notify when the check fails",
			]
			default: []
		}
		subscribers: {
			description: [
				"List of subscribers/channels this check should run for",
				"See sensu_subscribers to subscribe a machine to a channel",
			]
			default: []
		}
		interval: description: [
			"Check interval in seconds",
		]
		timeout: {
			description: [
				"Timeout for the check",
			]
			default: 10
		}
		ttl: {
			description: [
				"Time to live in seconds until the check is considered stale",
			]
			version_added: 2.4
		}
		handle: {
			description: [
				"Whether the check should be handled or not",
			]
			type:    "bool"
			default: "yes"
		}
		subdue_begin: description: [
			"When to disable handling of check failures",
		]
		subdue_end: description: [
			"When to enable handling of check failures",
		]
		dependencies: {
			description: [
				"Other checks this check depends on, if dependencies fail,",
				"handling of this check will be disabled",
			]
			default: []
		}
		metric: {
			description: [
				"Whether the check is a metric",
			]
			type:    "bool"
			default: "no"
		}
		standalone: {
			description: [
				"Whether the check should be scheduled by the sensu client or server",
				"This option obviates the need for specifying the I(subscribers) option",
			]
			type:    "bool"
			default: "no"
		}
		publish: {
			description: [
				"Whether the check should be scheduled at all.",
				"You can still issue it via the sensu api",
			]
			type:    "bool"
			default: "yes"
		}
		occurrences: {
			description: [
				"Number of event occurrences before the handler should take action",
			]
			default: 1
		}
		refresh: description: [
			"Number of seconds handlers should wait before taking second action",
		]
		aggregate: {
			description: [
				"Classifies the check as an aggregate check,",
				"making it available via the aggregate API",
			]
			type:    "bool"
			default: "no"
		}
		low_flap_threshold: description: [
			"The low threshold for flap detection",
		]
		high_flap_threshold: description: [
			"The high threshold for flap detection",
		]
		custom: {
			version_added: "2.1"
			description: [
				"A hash/dictionary of custom parameters for mixing to the configuration.",
				"You can't rewrite others module parameters using this",
			]
			default: {}
		}
		source: {
			version_added: "2.1"
			description: [
				"The check source, used to create a JIT Sensu client for an external resource (e.g. a network switch).",
			]
		}
	}
	author: "Anders Ingemann (@andsens)"
}
