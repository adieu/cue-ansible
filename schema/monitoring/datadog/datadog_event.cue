package ansible

module: datadog_event: {
	module:            "datadog_event"
	short_description: "Posts events to Datadog  service"
	description: [
		"Allows to post events to Datadog (www.datadoghq.com) service.",
		"Uses http://docs.datadoghq.com/api/#events API.",
	]
	version_added: "1.3"
	author: [
		"Artūras `arturaz` Šlajus (@arturaz)",
		"Naoya Nakazawa (@n0ts)",
	], options: {

		api_key: {
			description: ["Your DataDog API key."]
			required: true
		}
		app_key: {
			description: ["Your DataDog app key."]
			required:      true
			version_added: "2.2"
		}
		title: {
			description: ["The event title."]
			required: true
		}
		text: {
			description: ["The body of the event."]
			required: true
		}
		date_happened: {
			description: [
				"POSIX timestamp of the event.",
				"Default value is now.",
			]
			default: "now"
		}
		priority: {
			description: ["The priority of the event."]
			default: "normal"
			choices: ["normal", "low"]
		}
		host: {
			description: ["Host name to associate with the event."]
			default:       "{{ ansible_hostname }}"
			version_added: "2.4"
		}
		tags: description: ["Comma separated list of tags to apply to the event."]
		alert_type: {
			description: ["Type of alert."]
			default: "info"
			choices: ["error", "warning", "info", "success"]
		}
		aggregation_key: description: ["An arbitrary string to use for aggregation."]
		validate_certs: {
			description: [
				"If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.",
			]

			type:          "bool"
			default:       "yes"
			version_added: "1.5.1"
		}
	}
}
