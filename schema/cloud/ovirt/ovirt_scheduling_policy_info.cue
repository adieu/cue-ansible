package ansible

module: ovirt_scheduling_policy_info: {
	module:            "ovirt_scheduling_policy_info"
	short_description: "Retrieve information about one or more oVirt scheduling policies"
	author:            "Ondra Machacek (@machacekondra)"
	version_added:     "2.4"
	description: [
		"Retrieve information about one or more oVirt scheduling policies.",
		"This module was called C(ovirt_scheduling_policy_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(ovirt_scheduling_policy_info) module no longer returns C(ansible_facts)!",
	]

	notes: [
		"This module returns a variable C(ovirt_scheduling_policies), which contains a list of scheduling policies. You need to register the result with the I(register) keyword to use it.",
	]

	options: {
		id: {
			description: [
				"ID of the scheduling policy.",
			]
			required: true
		}
		name: description: [
			"Name of the scheduling policy, can be used as glob expression.",
		]
	}
	extends_documentation_fragment: "ovirt_info"
}
