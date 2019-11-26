package ansible

module: os_networks_info: {
	module:            "os_networks_info"
	short_description: "Retrieve information about one or more OpenStack networks."
	version_added:     "2.0"
	author:            "Davide Agnello (@dagnello)"
	description: [
		"Retrieve information about one or more networks from OpenStack.",
		"This module was called C(os_networks_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(os_networks_info) module no longer returns C(ansible_facts)!",
	]

	requirements: [
		"python >= 2.7",
		"sdk",
	]
	options: {
		name: {
			description: [
				"Name or ID of the Network",
			]
			required: false
		}
		filters: {
			description: [
				"A dictionary of meta data to use for further filtering.  Elements of this dictionary may be additional dictionaries.",
			]

			required: false
		}
		availability_zone: {
			description: [
				"Ignored. Present for backwards compatibility",
			]
			required: false
		}
	}
	extends_documentation_fragment: "openstack"
}
