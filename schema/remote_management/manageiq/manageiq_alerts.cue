package ansible

module: manageiq_alerts: {
	module: "manageiq_alerts"

	short_description:              "Configuration of alerts in ManageIQ"
	extends_documentation_fragment: "manageiq"
	version_added:                  "2.5"
	author:                         "Elad Alfassa (@elad661) <ealfassa@redhat.com"
	description: [
		"The manageiq_alerts module supports adding, updating and deleting alerts in ManageIQ.",
	]

	options: {
		state: {
			description: [
				"absent - alert should not exist,",
				"present - alert should exist,",
			]
			required: false
			choices: ["absent", "present"]
			default: "present"
		}
		description: description: [
			"The unique alert description in ManageIQ.",
			"Required when state is \"absent\" or \"present\".",
		]
		resource_type: {
			description: [
				"The entity type for the alert in ManageIQ. Required when state is \"present\".",
			]
			choices: [
				"Vm",
				"ContainerNode",
				"MiqServer",
				"Host",
				"Storage",
				"EmsCluster",
				"ExtManagementSystem",
				"MiddlewareServer",
			]
		}
		expression_type: {
			description: [
				"Expression type.",
			]
			default: "hash"
			choices: ["hash", "miq"]
		}
		expression: description: [
			"The alert expression for ManageIQ.",
			"Can either be in the \"Miq Expression\" format or the \"Hash Expression format\".",
			"Required if state is \"present\".",
		]
		enabled: {
			description: [
				"Enable or disable the alert. Required if state is \"present\".",
			]
			type: "bool"
		}
		options: description: [
			"Additional alert options, such as notification type and frequency",
		]
	}
}
