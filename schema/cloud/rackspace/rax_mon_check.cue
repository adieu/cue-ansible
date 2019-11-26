package ansible

module: rax_mon_check: {
	module:            "rax_mon_check"
	short_description: "Create or delete a Rackspace Cloud Monitoring check for an existing entity."

	description: [
		"Create or delete a Rackspace Cloud Monitoring check associated with an existing rax_mon_entity. A check is a specific test or measurement that is performed, possibly from different monitoring zones, on the systems you monitor. Rackspace monitoring module flow | rax_mon_entity -> *rax_mon_check* -> rax_mon_notification -> rax_mon_notification_plan -> rax_mon_alarm",
	]

	version_added: "2.0"
	options: {
		state: {
			description: [
				"Ensure that a check with this C(label) exists or does not exist.",
			]
			choices: ["present", "absent"]
		}
		entity_id: {
			description: [
				"ID of the rax_mon_entity to target with this check.",
			]
			required: true
		}
		label: {
			description: [
				"Defines a label for this check, between 1 and 64 characters long.",
			]
			required: true
		}
		check_type: {
			description: [
				"The type of check to create. C(remote.) checks may be created on any rax_mon_entity. C(agent.) checks may only be created on rax_mon_entities that have a non-null C(agent_id).",
			]

			choices: [
				"remote.dns",
				"remote.ftp-banner",
				"remote.http",
				"remote.imap-banner",
				"remote.mssql-banner",
				"remote.mysql-banner",
				"remote.ping",
				"remote.pop3-banner",
				"remote.postgresql-banner",
				"remote.smtp-banner",
				"remote.smtp",
				"remote.ssh",
				"remote.tcp",
				"remote.telnet-banner",
				"agent.filesystem",
				"agent.memory",
				"agent.load_average",
				"agent.cpu",
				"agent.disk",
				"agent.network",
				"agent.plugin",
			]
			required: true
		}
		monitoring_zones_poll: description: [
			"Comma-separated list of the names of the monitoring zones the check should run from. Available monitoring zones include mzdfw, mzhkg, mziad, mzlon, mzord and mzsyd. Required for remote.* checks; prohibited for agent.* checks.",
		]

		target_hostname: description: [
			"One of `target_hostname` and `target_alias` is required for remote.* checks, but prohibited for agent.* checks. The hostname this check should target. Must be a valid IPv4, IPv6, or FQDN.",
		]

		target_alias: description: [
			"One of `target_alias` and `target_hostname` is required for remote.* checks, but prohibited for agent.* checks. Use the corresponding key in the entity's `ip_addresses` hash to resolve an IP address to target.",
		]

		details: description: [
			"Additional details specific to the check type. Must be a hash of strings between 1 and 255 characters long, or an array or object containing 0 to 256 items.",
		]

		disabled: {
			description: [
				"If \"yes\", ensure the check is created, but don't actually use it yet.",
			]
			type: "bool"
		}
		metadata: description: [
			"Hash of arbitrary key-value pairs to accompany this check if it fires. Keys and values must be strings between 1 and 255 characters long.",
		]

		period: description: [
			"The number of seconds between each time the check is performed. Must be greater than the minimum period set on your account.",
		]

		timeout: description: [
			"The number of seconds this check will wait when attempting to collect results. Must be less than the period.",
		]
	}

	author:                         "Ash Wilson (@smashwilson)"
	extends_documentation_fragment: "rackspace.openstack"
}
