package ansible

module: rax_mon_notification: {
	module:            "rax_mon_notification"
	short_description: "Create or delete a Rackspace Cloud Monitoring notification."
	description: [
		"Create or delete a Rackspace Cloud Monitoring notification that specifies a channel that can be used to communicate alarms, such as email, webhooks, or PagerDuty. Rackspace monitoring module flow | rax_mon_entity -> rax_mon_check -> *rax_mon_notification* -> rax_mon_notification_plan -> rax_mon_alarm",
	]

	version_added: "2.0"
	options: {
		state: {
			description: [
				"Ensure that the notification with this C(label) exists or does not exist.",
			]
			choices: ["present", "absent"]
		}
		label: {
			description: [
				"Defines a friendly name for this notification. String between 1 and 255 characters long.",
			]

			required: true
		}
		notification_type: {
			description: [
				"A supported notification type.",
			]
			choices: ["webhook", "email", "pagerduty"]
			required: true
		}
		details: {
			description: [
				"Dictionary of key-value pairs used to initialize the notification. Required keys and meanings vary with notification type. See http://docs.rackspace.com/cm/api/v1.0/cm-devguide/content/ service-notification-types-crud.html for details.",
			]

			required: true
		}
	}
	author:                         "Ash Wilson (@smashwilson)"
	extends_documentation_fragment: "rackspace.openstack"
}
