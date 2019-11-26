package ansible

module: vmware_host_vmhba_facts: {
	module: "vmware_host_vmhba_facts"
	deprecated: {
		removed_in:  "2.13"
		why:         "Deprecated in favour of C(_info) module."
		alternative: "Use M(vmware_host_vmhba_info) instead."
	}
	short_description: "Gathers facts about vmhbas available on the given ESXi host"
	description: [
		"This module can be used to gather facts about vmhbas available on the given ESXi host.",
		"If C(cluster_name) is provided, then vmhba facts about all hosts from given cluster will be returned.",
		"If C(esxi_hostname) is provided, then vmhba facts about given host system will be returned.",
	]
	version_added: "2.8"
	author: [
		"Christian Kotte (@ckotte)",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		esxi_hostname: {
			description: [
				"Name of the host system to work with.",
				"Vmhba facts about this ESXi server will be returned.",
				"This parameter is required if C(cluster_name) is not specified.",
			]
			type: "str"
		}
		cluster_name: {
			description: [
				"Name of the cluster from which all host systems will be used.",
				"Vmhba facts about each ESXi server will be returned for the given cluster.",
				"This parameter is required if C(esxi_hostname) is not specified.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
