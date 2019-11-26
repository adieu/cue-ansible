package ansible

module: vmware_drs_rule_info: {
	module:            "vmware_drs_rule_info"
	short_description: "Gathers info about DRS rule on the given cluster"
	description: [
		"This module can be used to gather information about DRS VM-VM and VM-HOST rules from the given cluster.",
	]
	version_added: "2.9"
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
				"DRS information for the given cluster will be returned.",
				"This is required parameter if C(datacenter) parameter is not provided.",
			]
			type: "str"
		}
		datacenter: {
			description: [
				"Name of the datacenter.",
				"DRS information for all the clusters from the given datacenter will be returned.",
				"This is required parameter if C(cluster_name) parameter is not provided.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
