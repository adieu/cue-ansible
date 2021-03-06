package ansible

module: rax_mon_entity: {
	module:            "rax_mon_entity"
	short_description: "Create or delete a Rackspace Cloud Monitoring entity"
	description: [
		"Create or delete a Rackspace Cloud Monitoring entity, which represents a device to monitor. Entities associate checks and alarms with a target system and provide a convenient, centralized place to store IP addresses. Rackspace monitoring module flow | *rax_mon_entity* -> rax_mon_check -> rax_mon_notification -> rax_mon_notification_plan -> rax_mon_alarm",
	]

	version_added: "2.0"
	options: {
		label: {
			description: [
				"Defines a name for this entity. Must be a non-empty string between 1 and 255 characters long.",
			]

			required: true
		}
		state: {
			description: [
				"Ensure that an entity with this C(name) exists or does not exist.",
			]
			choices: ["present", "absent"]
		}
		agent_id: description: [
			"Rackspace monitoring agent on the target device to which this entity is bound. Necessary to collect C(agent.) rax_mon_checks against this entity.",
		]

		named_ip_addresses: description: [
			"Hash of IP addresses that may be referenced by name by rax_mon_checks added to this entity. Must be a dictionary of with keys that are names between 1 and 64 characters long, and values that are valid IPv4 or IPv6 addresses.",
		]

		metadata: description: [
			"Hash of arbitrary C(name), C(value) pairs that are passed to associated rax_mon_alarms. Names and values must all be between 1 and 255 characters long.",
		]
	}

	author:                         "Ash Wilson (@smashwilson)"
	extends_documentation_fragment: "rackspace.openstack"
}
