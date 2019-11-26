package ansible

module: ovirt_user_info: {
	module:            "ovirt_user_info"
	short_description: "Retrieve information about one or more oVirt/RHV users"
	author:            "Ondra Machacek (@machacekondra)"
	version_added:     "2.3"
	description: [
		"Retrieve information about one or more oVirt/RHV users.",
		"This module was called C(ovirt_user_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(ovirt_user_info) module no longer returns C(ansible_facts)!",
	]

	notes: [
		"This module returns a variable C(ovirt_users), which contains a list of users. You need to register the result with the I(register) keyword to use it.",
	]

	options: pattern: description: [
		"Search term which is accepted by oVirt/RHV search backend.",
		"For example to search user X use following pattern: name=X",
	]
	extends_documentation_fragment: "ovirt_info"
}
