package ansible

module: checkpoint_object_facts: {
	module:            "checkpoint_object_facts"
	short_description: "Get object facts on Check Point over Web Services API"
	description: [
		"Get object facts on Check Point devices. All operations are performed over Web Services API.",
	]

	version_added: "2.8"
	author:        "Ansible by Red Hat (@rcarrillocruz)"
	options: {
		uid: description: [
			"UID of the object. If UID is not provided, it will do a full search which can be filtered with the filter argument.",
		]

		object_filter: description: [
			"Filter expression for search. It accepts AND/OR logical operators and performs a textual and IP address search. To search only by IP address, set ip_only argument to True. which can be filtered with the filter argument.",
		]

		ip_only: {
			description: [
				"Filter only by IP address.",
			]
			type:    "bool"
			default: false
		}
		object_type: {
			description: [
				"Type of the object to search. Must be a valid API resource name",
			]
			type: "str"
		}
	}
}
