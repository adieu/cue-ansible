package ansible

module: ovirt_affinity_label: {
	module:            "ovirt_affinity_label"
	short_description: "Module to manage affinity labels in oVirt/RHV"
	version_added:     "2.3"
	author:            "Ondra Machacek (@machacekondra)"
	description: [
		"This module manage affinity labels in oVirt/RHV. It can also manage assignments of those labels to hosts and VMs.",
	]

	options: {
		name: {
			description: [
				"Name of the affinity label to manage.",
			]
			required: true
		}
		state: {
			description: [
				"Should the affinity label be present or absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		cluster: description: [
			"Name of the cluster where vms and hosts resides.",
		]
		vms: description: [
			"List of the VMs names, which should have assigned this affinity label.",
		]
		hosts: description: [
			"List of the hosts names, which should have assigned this affinity label.",
		]
	}
	extends_documentation_fragment: "ovirt"
}
