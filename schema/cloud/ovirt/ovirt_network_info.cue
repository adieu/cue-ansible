package ansible

module: ovirt_network_info: {
	module:            "ovirt_network_info"
	short_description: "Retrieve information about one or more oVirt/RHV networks"
	author:            "Ondra Machacek (@machacekondra)"
	version_added:     "2.3"
	description: [
		"Retrieve information about one or more oVirt/RHV networks.",
		"This module was called C(ovirt_network_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(ovirt_network_info) module no longer returns C(ansible_facts)!",
	]

	notes: [
		"This module returns a variable C(ovirt_networks), which contains a list of networks. You need to register the result with the I(register) keyword to use it.",
	]

	options: pattern: description: [
		"Search term which is accepted by oVirt/RHV search backend.",
		"For example to search network starting with string vlan1 use: name=vlan1*",
	]
	extends_documentation_fragment: "ovirt_info"
}
