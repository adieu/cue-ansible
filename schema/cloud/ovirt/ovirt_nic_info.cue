package ansible

module: ovirt_nic_info: {
	module:            "ovirt_nic_info"
	short_description: "Retrieve information about one or more oVirt/RHV virtual machine network interfaces"
	author:            "Ondra Machacek (@machacekondra)"
	version_added:     "2.3"
	description: [
		"Retrieve information about one or more oVirt/RHV virtual machine network interfaces.",
		"This module was called C(ovirt_nic_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(ovirt_nic_info) module no longer returns C(ansible_facts)!",
	]

	notes: [
		"This module returns a variable C(ovirt_nics), which contains a list of NICs. You need to register the result with the I(register) keyword to use it.",
	]

	options: {
		vm: {
			description: [
				"Name of the VM where NIC is attached.",
			]
			required: true
		}
		name: description: [
			"Name of the NIC, can be used as glob expression.",
		]
	}
	extends_documentation_fragment: "ovirt_info"
}
