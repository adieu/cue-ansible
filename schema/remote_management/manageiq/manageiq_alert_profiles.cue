package ansible

module: manageiq_alert_profiles: {
	module: "manageiq_alert_profiles"

	short_description:              "Configuration of alert profiles for ManageIQ"
	extends_documentation_fragment: "manageiq"
	version_added:                  "2.5"
	author:                         "Elad Alfassa (@elad661) <ealfassa@redhat.com>"
	description: [
		"The manageiq_alert_profiles module supports adding, updating and deleting alert profiles in ManageIQ.",
	]

	options: {
		state: {
			description: [
				"absent - alert profile should not exist,",
				"present - alert profile should exist,",
			]
			choices: ["absent", "present"]
			default: "present"
		}
		name: description: [
			"The unique alert profile name in ManageIQ.",
			"Required when state is \"absent\" or \"present\".",
		]
		resource_type: {
			description: [
				"The resource type for the alert profile in ManageIQ. Required when state is \"present\".",
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
		alerts: description: [
			"List of alert descriptions to assign to this profile.",
			"Required if state is \"present\"",
		]
		notes: description: [
			"Optional notes for this profile",
		]
	}
}
