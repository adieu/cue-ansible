package ansible

module: ovirt_vmpool_info: {
	module:            "ovirt_vmpool_info"
	short_description: "Retrieve information about one or more oVirt/RHV vmpools"
	author:            "Ondra Machacek (@machacekondra)"
	version_added:     "2.3"
	description: [
		"Retrieve information about one or more oVirt/RHV vmpools.",
		"This module was called C(ovirt_vmpool_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(ovirt_vmpool_info) module no longer returns C(ansible_facts)!",
	]

	notes: [
		"This module returns a variable C(ovirt_vmpools), which contains a list of vmpools. You need to register the result with the I(register) keyword to use it.",
	]

	options: pattern: description: [
		"Search term which is accepted by oVirt/RHV search backend.",
		"For example to search vmpool X: name=X",
	]
	extends_documentation_fragment: "ovirt_info"
}
