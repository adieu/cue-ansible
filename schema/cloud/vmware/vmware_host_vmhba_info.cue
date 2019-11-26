package ansible

module: vmware_host_vmhba_info: {
	module:            "vmware_host_vmhba_info"
	short_description: "Gathers info about vmhbas available on the given ESXi host"
	description: [
		"This module can be used to gather information about vmhbas available on the given ESXi host.",
		"If C(cluster_name) is provided, then vmhba information about all hosts from given cluster will be returned.",
		"If C(esxi_hostname) is provided, then vmhba information about given host system will be returned.",
	]
	version_added: "2.9"
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
				"Vmhba information about this ESXi server will be returned.",
				"This parameter is required if C(cluster_name) is not specified.",
			]
			type: "str"
		}
		cluster_name: {
			description: [
				"Name of the cluster from which all host systems will be used.",
				"Vmhba information about each ESXi server will be returned for the given cluster.",
				"This parameter is required if C(esxi_hostname) is not specified.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
