package ansible

module: vmware_vm_vm_drs_rule: {
	module:            "vmware_vm_vm_drs_rule"
	short_description: "Configure VMware DRS Affinity rule for virtual machine in given cluster"
	description: [
		"This module can be used to configure VMware DRS Affinity rule for virtual machine in given cluster.",
	]
	version_added: 2.5
	author: [
		"Abhijeet Kasurde (@Akasurde)",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		cluster_name: {
			description: [
				"Desired cluster name where virtual machines are present for the DRS rule.",
			]
			required: true
			type:     "str"
		}
		vms: {
			description: [
				"List of virtual machines name for which DRS rule needs to be applied.",
				"Required if C(state) is set to C(present).",
			]
			type: "list"
		}
		drs_rule_name: {
			description: [
				"The name of the DRS rule to manage.",
			]
			required: true
			type:     "str"
		}
		enabled: {
			description: [
				"If set to C(True), the DRS rule will be enabled.",
				"Effective only if C(state) is set to C(present).",
			]
			default: false
			type:    "bool"
		}
		mandatory: {
			description: [
				"If set to C(True), the DRS rule will be mandatory.",
				"Effective only if C(state) is set to C(present).",
			]
			default: false
			type:    "bool"
		}
		affinity_rule: {
			description: [
				"If set to C(True), the DRS rule will be an Affinity rule.",
				"If set to C(False), the DRS rule will be an Anti-Affinity rule.",
				"Effective only if C(state) is set to C(present).",
			]
			default: true
			type:    "bool"
		}
		state: {
			description: [
				"If set to C(present), then the DRS rule is created if not present.",
				"If set to C(present), then the DRS rule is already present, it updates to the given configurations.",
				"If set to C(absent), then the DRS rule is deleted if present.",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
			type: "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
