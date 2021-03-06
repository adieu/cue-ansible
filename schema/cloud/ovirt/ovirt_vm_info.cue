package ansible

module: ovirt_vm_info: {
	module:            "ovirt_vm_info"
	short_description: "Retrieve information about one or more oVirt/RHV virtual machines"
	author:            "Ondra Machacek (@machacekondra)"
	version_added:     "2.3"
	description: [
		"Retrieve information about one or more oVirt/RHV virtual machines.",
		"This module was called C(ovirt_vm_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(ovirt_vm_info) module no longer returns C(ansible_facts)!",
	]

	notes: [
		"This module returns a variable C(ovirt_vms), which contains a list of virtual machines. You need to register the result with the I(register) keyword to use it.",
	]

	options: {
		pattern: description: [
			"Search term which is accepted by oVirt/RHV search backend.",
			"For example to search VM X from cluster Y use following pattern: name=X and cluster=Y",
		]

		all_content: {
			description: [
				"If I(true) all the attributes of the virtual machines should be included in the response.",
			]

			type: "bool"
		}
		case_sensitive: {
			description: [
				"If I(true) performed search will take case into account.",
			]
			type:    "bool"
			default: true
		}
		max: description: [
			"The maximum number of results to return.",
		]
		next_run: {
			description: [
				"Indicates if the returned result describes the virtual machine as it is currently running or if describes the virtual machine with the modifications that have already been performed but that will only come into effect when the virtual machine is restarted. By default the value is set by engine.",
			]

			type:          "bool"
			version_added: "2.8"
		}
	}
	extends_documentation_fragment: "ovirt_info"
}
