package ansible

module: ovirt_affinity_group: {
	module:            "ovirt_affinity_group"
	short_description: "Module to manage affinity groups in oVirt/RHV"
	version_added:     "2.3"
	author: [
		"Ondra Machacek (@machacekondra)",
	]
	description: [
		"This module manage affinity groups in oVirt/RHV. It can also manage assignments of those groups to VMs.",
	]

	options: {
		name: {
			description: [
				"Name of the affinity group to manage.",
			]
			required: true
		}
		state: {
			description: [
				"Should the affinity group be present or absent.",
			]
			choices: ["absent", "present"]
			default: "present"
		}
		cluster: description: [
			"Name of the cluster of the affinity group.",
		]
		description: description: [
			"Description of the affinity group.",
		]
		host_enforcing: {
			description: [
				"If I(yes) VM cannot start on host if it does not satisfy the C(host_rule).",
				"This parameter is support since oVirt/RHV 4.1 version.",
			]
			type: "bool"
		}
		host_rule: {
			description: [
				"If I(positive) I(all) VMs in this group should run on the this host.",
				"If I(negative) I(no) VMs in this group should run on the this host.",
				"This parameter is support since oVirt/RHV 4.1 version.",
			]
			choices: ["negative", "positive"]
		}
		vm_enforcing: {
			description: [
				"If I(yes) VM cannot start if it does not satisfy the C(vm_rule).",
			]
			type: "bool"
		}
		vm_rule: {
			description: [
				"If I(positive) I(all) VMs in this group should run on the host defined by C(host_rule).",
				"If I(negative) I(no) VMs in this group should run on the host defined by C(host_rule).",
				"If I(disabled) this affinity group doesn't take effect.",
			]
			choices: ["disabled", "negative", "positive"]
		}
		vms: description: [
			"List of the VMs names, which should have assigned this affinity group.",
		]
		hosts: description: [
			"List of the hosts names, which should have assigned this affinity group.",
			"This parameter is support since oVirt/RHV 4.1 version.",
		]
	}
	extends_documentation_fragment: "ovirt"
}
