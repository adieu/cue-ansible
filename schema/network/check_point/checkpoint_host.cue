package ansible

module: checkpoint_host: {
	module:            "checkpoint_host"
	short_description: "Manages host objects on Check Point over Web Services API"
	description: [
		"Manages host objects on Check Point devices including creating, updating, removing access rules objects. All operations are performed over Web Services API.",
	]

	version_added: "2.8"
	author:        "Ansible by Red Hat (@rcarrillocruz)"
	options: {
		name: {
			description: [
				"Name of the access rule.",
			]
			type:     "str"
			required: true
		}
		ip_address: {
			description: [
				"IP address of the host object.",
			]
			type: "str"
		}
		state: {
			description: [
				"State of the access rule (present or absent). Defaults to present.",
			]
			type:    "str"
			default: "present"
		}
		auto_publish_session: {
			description: [
				"Publish the current session if changes have been performed after task completes.",
			]

			type:    "bool"
			default: "yes"
		}
		auto_install_policy: {
			description: [
				"Install the package policy if changes have been performed after the task completes.",
			]

			type:    "bool"
			default: "yes"
		}
		policy_package: {
			description: [
				"Package policy name to be installed.",
			]
			type:    "str"
			default: "standard"
		}
		targets: {
			description: [
				"Targets to install the package policy on.",
			]
			type: "list"
		}
	}
}
