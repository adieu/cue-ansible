package ansible

module: ovirt_storage_vm_info: {
	module:            "ovirt_storage_vm_info"
	short_description: "Retrieve information about one or more oVirt/RHV virtual machines relate to a storage domain."
	author:            "Maor Lipchuk (@machacekondra)"
	version_added:     "2.4"
	description: [
		"Retrieve information about one or more oVirt/RHV virtual machines relate to a storage domain.",
		"This module was called C(ovirt_storage_vm_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(ovirt_storage_vm_info) module no longer returns C(ansible_facts)!",
	]

	notes: [
		"This module returns a variable C(ovirt_storage_vms), which contains a list of virtual machines. You need to register the result with the I(register) keyword to use it.",
	]

	options: {
		unregistered: {
			description: [
				"Flag which indicates whether to get unregistered virtual machines which contain one or more disks which reside on a storage domain or diskless virtual machines.",
			]

			type:    "bool"
			default: false
		}
		max: description: [
			"Sets the maximum number of virtual machines to return. If not specified all the virtual machines are returned.",
		]
		storage_domain: description: [
			"The storage domain name where the virtual machines should be listed.",
		]
	}
	extends_documentation_fragment: "ovirt_info"
}
