package ansible

module: pagerduty: {
	module:            "pagerduty"
	short_description: "Create PagerDuty maintenance windows"
	description: [
		"This module will let you create PagerDuty maintenance windows",
	]
	version_added: "1.2"
	author: [
		"Andrew Newdigate (@suprememoocow)",
		"Dylan Silva (@thaumos)",
		"Justin Johns (!UNKNOWN)",
		"Bruce Pennypacker (@bpennypacker)",
	]
	requirements: [
		"PagerDuty API access",
	]
	options: {
		state: {
			description: [
				"Create a maintenance window or get a list of ongoing windows.",
			]
			required: true
			choices: ["running", "started", "ongoing", "absent"]
		}
		name: description: [
			"PagerDuty unique subdomain. Obsolete. It is not used with PagerDuty REST v2 API.",
		]
		user: description: [
			"PagerDuty user ID. Obsolete. Please, use I(token) for authorization.",
		]
		token: {
			description: [
				"A pagerduty token, generated on the pagerduty site. It is used for authorization.",
			]
			required:      true
			version_added: "1.8"
		}
		requester_id: {
			description: [
				"ID of user making the request. Only needed when creating a maintenance_window.",
			]
			version_added: "1.8"
		}
		service: {
			description: [
				"A comma separated list of PagerDuty service IDs.",
			]
			aliases: ["services"]
		}
		window_id: {
			description: [
				"ID of maintenance window. Only needed when absent a maintenance_window.",
			]
			version_added: "2.7"
		}
		hours: {
			description: [
				"Length of maintenance window in hours.",
			]
			default: 1
		}
		minutes: {
			description: [
				"Maintenance window in minutes (this is added to the hours).",
			]
			default:       0
			version_added: "1.8"
		}
		desc: {
			description: [
				"Short description of maintenance window.",
			]
			default: "Created by Ansible"
		}
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
