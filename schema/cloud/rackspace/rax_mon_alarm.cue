package ansible

module: rax_mon_alarm: {
	module:            "rax_mon_alarm"
	short_description: "Create or delete a Rackspace Cloud Monitoring alarm."
	description: [
		"Create or delete a Rackspace Cloud Monitoring alarm that associates an existing rax_mon_entity, rax_mon_check, and rax_mon_notification_plan with criteria that specify what conditions will trigger which levels of notifications. Rackspace monitoring module flow | rax_mon_entity -> rax_mon_check -> rax_mon_notification -> rax_mon_notification_plan -> *rax_mon_alarm*",
	]

	version_added: "2.0"
	options: {
		state: {
			description: [
				"Ensure that the alarm with this C(label) exists or does not exist.",
			]
			choices: ["present", "absent"]
			required: false
			default:  "present"
		}
		label: {
			description: [
				"Friendly name for this alarm, used to achieve idempotence. Must be a String between 1 and 255 characters long.",
			]

			required: true
		}
		entity_id: {
			description: [
				"ID of the entity this alarm is attached to. May be acquired by registering the value of a rax_mon_entity task.",
			]

			required: true
		}
		check_id: {
			description: [
				"ID of the check that should be alerted on. May be acquired by registering the value of a rax_mon_check task.",
			]

			required: true
		}
		notification_plan_id: {
			description: [
				"ID of the notification plan to trigger if this alarm fires. May be acquired by registering the value of a rax_mon_notification_plan task.",
			]

			required: true
		}
		criteria: description: [
			"Alarm DSL that describes alerting conditions and their output states. Must be between 1 and 16384 characters long. See http://docs.rackspace.com/cm/api/v1.0/cm-devguide/content/alerts-language.html for a reference on the alerting language.",
		]

		disabled: {
			description: [
				"If yes, create this alarm, but leave it in an inactive state. Defaults to no.",
			]

			type: "bool"
		}
		metadata: description: [
			"Arbitrary key/value pairs to accompany the alarm. Must be a hash of String keys and values between 1 and 255 characters long.",
		]
	}

	author:                         "Ash Wilson (@smashwilson)"
	extends_documentation_fragment: "rackspace.openstack"
}
