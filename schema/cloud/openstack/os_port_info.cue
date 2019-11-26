package ansible

module: os_port_info: {
	module:            "os_port_info"
	short_description: "Retrieve information about ports within OpenStack."
	version_added:     "2.1"
	author:            "David Shrewsbury (@Shrews)"
	description: [
		"Retrieve information about ports from OpenStack.",
		"This module was called C(os_port_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(os_port_info) module no longer returns C(ansible_facts)!",
	]

	requirements: [
		"python >= 2.7",
		"openstacksdk",
	]
	options: {
		port: description: [
			"Unique name or ID of a port.",
		]
		filters: description: [
			"A dictionary of meta data to use for further filtering. Elements of this dictionary will be matched against the returned port dictionaries. Matching is currently limited to strings within the port dictionary, or strings within nested dictionaries.",
		]

		availability_zone: description: [
			"Ignored. Present for backwards compatibility",
		]
	}
	extends_documentation_fragment: "openstack"
}
