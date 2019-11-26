package ansible

module: vmware_drs_rule_facts: {
	module: "vmware_drs_rule_facts"
	deprecated: {
		removed_in:  "2.13"
		why:         "Deprecated in favour of C(_info) module."
		alternative: "Use M(vmware_drs_rule_info) instead."
	}
	short_description: "Gathers facts about DRS rule on the given cluster"
	description: [
		"This module can be used to gather facts about DRS VM-VM and VM-HOST rules from the given cluster.",
	]
	version_added: "2.5"
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
				"Name of the cluster.",
				"DRS facts for the given cluster will be returned.",
				"This is required parameter if C(datacenter) parameter is not provided.",
			]
			type: "str"
		}
		datacenter: {
			description: [
				"Name of the datacenter.",
				"DRS facts for all the clusters from the given datacenter will be returned.",
				"This is required parameter if C(cluster_name) parameter is not provided.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
