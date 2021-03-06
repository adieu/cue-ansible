package ansible

module: ovirt_storage_domain_info: {
	module:            "ovirt_storage_domain_info"
	short_description: "Retrieve information about one or more oVirt/RHV storage domains"
	author:            "Ondra Machacek (@machacekondra)"
	version_added:     "2.3"
	description: [
		"Retrieve information about one or more oVirt/RHV storage domains.",
		"This module was called C(ovirt_storage_domain_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(ovirt_storage_domain_info) module no longer returns C(ansible_facts)!",
	]

	notes: [
		"This module returns a variable C(ovirt_storage_domains), which contains a list of storage domains. You need to register the result with the I(register) keyword to use it.",
	]

	options: pattern: description: [
		"Search term which is accepted by oVirt/RHV search backend.",
		"For example to search storage domain X from datacenter Y use following pattern: name=X and datacenter=Y",
	]

	extends_documentation_fragment: "ovirt_info"
}
