package ansible

module: checkpoint_access_rule: {
	module:            "checkpoint_access_rule"
	short_description: "Manages access rules on Check Point over Web Services API"
	description: [
		"Manages access rules on Check Point devices including creating, updating, removing access rules objects, All operations are performed over Web Services API.",
	]

	version_added: "2.8"
	author:        "Ansible by Red Hat (@rcarrillocruz)"
	options: {
		name: {
			description: [
				"Name of the access rule.",
			]
			type: "str"
		}
		layer: {
			description: [
				"Layer to attach the access rule to.",
			]
			required: true
			type:     "str"
		}
		position: {
			description: [
				"Position of the access rule.",
			]
			type: "str"
		}
		source: {
			description: [
				"Source object of the access rule.",
			]
			type: "str"
		}
		destination: {
			description: [
				"Destination object of the access rule.",
			]
			type: "str"
		}
		action: {
			description: [
				"Action of the access rule (accept, drop, inform, etc).",
			]
			type:    "str"
			default: "drop"
		}
		enabled: {
			description: [
				"Enabled or disabled flag.",
			]
			type:    "bool"
			default: true
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
