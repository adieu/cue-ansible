package ansible

module: checkpoint_host_facts: {
	module:            "checkpoint_host_facts"
	short_description: "Get host objects facts on Check Point over Web Services API"
	description: [
		"Get host objects facts on Check Point devices. All operations are performed over Web Services API.",
	]

	version_added: "2.8"
	author:        "Ansible by Red Hat (@rcarrillocruz)"
	options: {
		name: {
			description: [
				"Name of the host object. If name is not provided, UID is required.",
			]
			type: "str"
		}
		uid: {
			description: [
				"UID of the host object. If UID is not provided, name is required.",
			]
			type: "str"
		}
	}
}
