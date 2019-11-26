package ansible

module: checkpoint_access_layer_facts: {
	module:            "checkpoint_access_layer_facts"
	short_description: "Get access layer facts on Check Point over Web Services API"
	description: [
		"Get access layer facts on Check Point devices. All operations are performed over Web Services API.",
	]

	version_added: "2.8"
	author:        "Ansible by Red Hat (@rcarrillocruz)"
	options: {
		uid: {
			description: [
				"UID of access layer object.",
			]
			type: "str"
		}
		name: {
			description: [
				"Name of the access layer object.",
			]
			type: "str"
		}
	}
}
