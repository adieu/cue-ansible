package ansible

module: checkpoint_access_rule_facts: {
	module:            "checkpoint_access_rule_facts"
	short_description: "Get access rules objects facts on Check Point over Web Services API"
	description: [
		"Get access rules objects facts on Check Point devices. All operations are performed over Web Services API.",
	]

	version_added: "2.8"
	author:        "Ansible by Red Hat (@rcarrillocruz)"
	options: {
		name: {
			description: [
				"Name of the access rule. If not provided, UID is required.",
			]
			type: "str"
		}
		uid: {
			description: [
				"UID of the access rule. If not provided, name is required.",
			]
			type: "str"
		}
		layer: {
			description: [
				"Layer the access rule is attached to.",
			]
			required: true
			type:     "str"
		}
	}
}
